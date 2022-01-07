
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct trace_iterator {TYPE_3__* tr; int cpu_file; TYPE_2__* trace_buffer; scalar_t__ snapshot; } ;
struct splice_pipe_desc {int nr_pages_max; int nr_pages; struct partial_page* partial; struct page** pages; int spd_release; int * ops; } ;
struct pipe_inode_info {int dummy; } ;
struct partial_page {int len; unsigned long private; scalar_t__ offset; } ;
struct page {int dummy; } ;
struct ftrace_buffer_info {struct trace_iterator iter; } ;
struct file {int f_flags; struct ftrace_buffer_info* private_data; } ;
struct buffer_ref {int * page; int cpu; int buffer; int refcount; } ;
typedef int ssize_t ;
typedef int loff_t ;
struct TYPE_6__ {int buffer_percent; TYPE_1__* current_trace; } ;
struct TYPE_5__ {int buffer; } ;
struct TYPE_4__ {scalar_t__ use_max_tr; } ;


 int EAGAIN ;
 int EBUSY ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int *) ;
 int O_NONBLOCK ;
 size_t PAGE_MASK ;
 int PAGE_SIZE ;
 int PIPE_DEF_BUFFERS ;
 int PTR_ERR (int *) ;
 unsigned int SPLICE_F_NONBLOCK ;
 int buffer_pipe_buf_ops ;
 int buffer_spd_release ;
 int kfree (struct buffer_ref*) ;
 struct buffer_ref* kzalloc (int,int ) ;
 int refcount_set (int *,int) ;
 int * ring_buffer_alloc_read_page (int ,int ) ;
 int ring_buffer_entries_cpu (int ,int ) ;
 int ring_buffer_free_read_page (int ,int ,int *) ;
 int ring_buffer_read_page (int ,int **,size_t,int ,int) ;
 scalar_t__ splice_grow_spd (struct pipe_inode_info*,struct splice_pipe_desc*) ;
 int splice_shrink_spd (struct splice_pipe_desc*) ;
 int splice_to_pipe (struct pipe_inode_info*,struct splice_pipe_desc*) ;
 int trace_access_lock (int ) ;
 int trace_access_unlock (int ) ;
 struct page* virt_to_page (int *) ;
 int wait_on_pipe (struct trace_iterator*,int ) ;

__attribute__((used)) static ssize_t
tracing_buffers_splice_read(struct file *file, loff_t *ppos,
       struct pipe_inode_info *pipe, size_t len,
       unsigned int flags)
{
 struct ftrace_buffer_info *info = file->private_data;
 struct trace_iterator *iter = &info->iter;
 struct partial_page partial_def[PIPE_DEF_BUFFERS];
 struct page *pages_def[PIPE_DEF_BUFFERS];
 struct splice_pipe_desc spd = {
  .pages = pages_def,
  .partial = partial_def,
  .nr_pages_max = PIPE_DEF_BUFFERS,
  .ops = &buffer_pipe_buf_ops,
  .spd_release = buffer_spd_release,
 };
 struct buffer_ref *ref;
 int entries, i;
 ssize_t ret = 0;






 if (*ppos & (PAGE_SIZE - 1))
  return -EINVAL;

 if (len & (PAGE_SIZE - 1)) {
  if (len < PAGE_SIZE)
   return -EINVAL;
  len &= PAGE_MASK;
 }

 if (splice_grow_spd(pipe, &spd))
  return -ENOMEM;

 again:
 trace_access_lock(iter->cpu_file);
 entries = ring_buffer_entries_cpu(iter->trace_buffer->buffer, iter->cpu_file);

 for (i = 0; i < spd.nr_pages_max && len && entries; i++, len -= PAGE_SIZE) {
  struct page *page;
  int r;

  ref = kzalloc(sizeof(*ref), GFP_KERNEL);
  if (!ref) {
   ret = -ENOMEM;
   break;
  }

  refcount_set(&ref->refcount, 1);
  ref->buffer = iter->trace_buffer->buffer;
  ref->page = ring_buffer_alloc_read_page(ref->buffer, iter->cpu_file);
  if (IS_ERR(ref->page)) {
   ret = PTR_ERR(ref->page);
   ref->page = ((void*)0);
   kfree(ref);
   break;
  }
  ref->cpu = iter->cpu_file;

  r = ring_buffer_read_page(ref->buffer, &ref->page,
       len, iter->cpu_file, 1);
  if (r < 0) {
   ring_buffer_free_read_page(ref->buffer, ref->cpu,
         ref->page);
   kfree(ref);
   break;
  }

  page = virt_to_page(ref->page);

  spd.pages[i] = page;
  spd.partial[i].len = PAGE_SIZE;
  spd.partial[i].offset = 0;
  spd.partial[i].private = (unsigned long)ref;
  spd.nr_pages++;
  *ppos += PAGE_SIZE;

  entries = ring_buffer_entries_cpu(iter->trace_buffer->buffer, iter->cpu_file);
 }

 trace_access_unlock(iter->cpu_file);
 spd.nr_pages = i;


 if (!spd.nr_pages) {
  if (ret)
   goto out;

  ret = -EAGAIN;
  if ((file->f_flags & O_NONBLOCK) || (flags & SPLICE_F_NONBLOCK))
   goto out;

  ret = wait_on_pipe(iter, iter->tr->buffer_percent);
  if (ret)
   goto out;

  goto again;
 }

 ret = splice_to_pipe(pipe, &spd);
out:
 splice_shrink_spd(&spd);

 return ret;
}
