
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct trace_iterator {int mutex; int cpu_file; int seq; int ent; TYPE_1__* trace; } ;
struct splice_pipe_desc {unsigned int nr_pages; int nr_pages_max; struct partial_page* partial; struct page** pages; int spd_release; int * ops; } ;
struct pipe_inode_info {int dummy; } ;
struct partial_page {int len; scalar_t__ offset; } ;
struct page {int dummy; } ;
struct file {struct trace_iterator* private_data; } ;
typedef int ssize_t ;
typedef int loff_t ;
struct TYPE_2__ {int (* splice_read ) (struct trace_iterator*,struct file*,int *,struct pipe_inode_info*,size_t,unsigned int) ;} ;


 int EFAULT ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int PIPE_DEF_BUFFERS ;
 int __free_page (struct page*) ;
 struct page* alloc_page (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int page_address (struct page*) ;
 scalar_t__ splice_grow_spd (struct pipe_inode_info*,struct splice_pipe_desc*) ;
 int splice_shrink_spd (struct splice_pipe_desc*) ;
 int splice_to_pipe (struct pipe_inode_info*,struct splice_pipe_desc*) ;
 int stub1 (struct trace_iterator*,struct file*,int *,struct pipe_inode_info*,size_t,unsigned int) ;
 int trace_access_lock (int ) ;
 int trace_access_unlock (int ) ;
 int trace_event_read_lock () ;
 int trace_event_read_unlock () ;
 int trace_find_next_entry_inc (struct trace_iterator*) ;
 int trace_seq_init (int *) ;
 int trace_seq_to_buffer (int *,int ,int ) ;
 int trace_seq_used (int *) ;
 size_t tracing_fill_pipe_page (size_t,struct trace_iterator*) ;
 int tracing_pipe_buf_ops ;
 int tracing_spd_release_pipe ;
 int tracing_wait_pipe (struct file*) ;

__attribute__((used)) static ssize_t tracing_splice_read_pipe(struct file *filp,
     loff_t *ppos,
     struct pipe_inode_info *pipe,
     size_t len,
     unsigned int flags)
{
 struct page *pages_def[PIPE_DEF_BUFFERS];
 struct partial_page partial_def[PIPE_DEF_BUFFERS];
 struct trace_iterator *iter = filp->private_data;
 struct splice_pipe_desc spd = {
  .pages = pages_def,
  .partial = partial_def,
  .nr_pages = 0,
  .nr_pages_max = PIPE_DEF_BUFFERS,
  .ops = &tracing_pipe_buf_ops,
  .spd_release = tracing_spd_release_pipe,
 };
 ssize_t ret;
 size_t rem;
 unsigned int i;

 if (splice_grow_spd(pipe, &spd))
  return -ENOMEM;

 mutex_lock(&iter->mutex);

 if (iter->trace->splice_read) {
  ret = iter->trace->splice_read(iter, filp,
            ppos, pipe, len, flags);
  if (ret)
   goto out_err;
 }

 ret = tracing_wait_pipe(filp);
 if (ret <= 0)
  goto out_err;

 if (!iter->ent && !trace_find_next_entry_inc(iter)) {
  ret = -EFAULT;
  goto out_err;
 }

 trace_event_read_lock();
 trace_access_lock(iter->cpu_file);


 for (i = 0, rem = len; i < spd.nr_pages_max && rem; i++) {
  spd.pages[i] = alloc_page(GFP_KERNEL);
  if (!spd.pages[i])
   break;

  rem = tracing_fill_pipe_page(rem, iter);


  ret = trace_seq_to_buffer(&iter->seq,
       page_address(spd.pages[i]),
       trace_seq_used(&iter->seq));
  if (ret < 0) {
   __free_page(spd.pages[i]);
   break;
  }
  spd.partial[i].offset = 0;
  spd.partial[i].len = trace_seq_used(&iter->seq);

  trace_seq_init(&iter->seq);
 }

 trace_access_unlock(iter->cpu_file);
 trace_event_read_unlock();
 mutex_unlock(&iter->mutex);

 spd.nr_pages = i;

 if (i)
  ret = splice_to_pipe(pipe, &spd);
 else
  ret = 0;
out:
 splice_shrink_spd(&spd);
 return ret;

out_err:
 mutex_unlock(&iter->mutex);
 goto out;
}
