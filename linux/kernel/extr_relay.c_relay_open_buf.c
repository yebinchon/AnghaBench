
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rchan_buf {unsigned int cpu; } ;
struct rchan {int buf; int is_global; TYPE_1__* cb; scalar_t__ has_base_filename; } ;
struct dentry {int dummy; } ;
struct TYPE_2__ {struct dentry* (* create_buf_file ) (int *,int *,int ,struct rchan_buf*,int *) ;} ;


 scalar_t__ IS_ERR_OR_NULL (struct dentry*) ;
 int S_IRUSR ;
 int __relay_reset (struct rchan_buf*,int) ;
 struct rchan_buf** per_cpu_ptr (int ,int ) ;
 struct rchan_buf* relay_create_buf (struct rchan*) ;
 struct dentry* relay_create_buf_file (struct rchan*,struct rchan_buf*,unsigned int) ;
 int relay_destroy_buf (struct rchan_buf*) ;
 int relay_set_buf_dentry (struct rchan_buf*,struct dentry*) ;
 struct dentry* stub1 (int *,int *,int ,struct rchan_buf*,int *) ;

__attribute__((used)) static struct rchan_buf *relay_open_buf(struct rchan *chan, unsigned int cpu)
{
  struct rchan_buf *buf = ((void*)0);
 struct dentry *dentry;

  if (chan->is_global)
  return *per_cpu_ptr(chan->buf, 0);

 buf = relay_create_buf(chan);
 if (!buf)
  return ((void*)0);

 if (chan->has_base_filename) {
  dentry = relay_create_buf_file(chan, buf, cpu);
  if (!dentry)
   goto free_buf;
  relay_set_buf_dentry(buf, dentry);
 } else {

  dentry = chan->cb->create_buf_file(((void*)0), ((void*)0),
         S_IRUSR, buf,
         &chan->is_global);
  if (IS_ERR_OR_NULL(dentry))
   goto free_buf;
 }

  buf->cpu = cpu;
  __relay_reset(buf, 1);

  if(chan->is_global) {
  *per_cpu_ptr(chan->buf, 0) = buf;
   buf->cpu = 0;
   }

 return buf;

free_buf:
  relay_destroy_buf(buf);
 return ((void*)0);
}
