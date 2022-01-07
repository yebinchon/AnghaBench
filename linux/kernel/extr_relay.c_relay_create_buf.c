
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rchan_buf {struct rchan_buf* padding; struct rchan* chan; int start; } ;
struct rchan {int n_subbufs; int kref; int alloc_size; } ;


 int GFP_KERNEL ;
 int KMALLOC_MAX_SIZE ;
 int kfree (struct rchan_buf*) ;
 struct rchan_buf* kmalloc_array (int,int,int ) ;
 int kref_get (int *) ;
 struct rchan_buf* kzalloc (int,int ) ;
 int relay_alloc_buf (struct rchan_buf*,int *) ;

__attribute__((used)) static struct rchan_buf *relay_create_buf(struct rchan *chan)
{
 struct rchan_buf *buf;

 if (chan->n_subbufs > KMALLOC_MAX_SIZE / sizeof(size_t *))
  return ((void*)0);

 buf = kzalloc(sizeof(struct rchan_buf), GFP_KERNEL);
 if (!buf)
  return ((void*)0);
 buf->padding = kmalloc_array(chan->n_subbufs, sizeof(size_t *),
         GFP_KERNEL);
 if (!buf->padding)
  goto free_buf;

 buf->start = relay_alloc_buf(buf, &chan->alloc_size);
 if (!buf->start)
  goto free_buf;

 buf->chan = chan;
 kref_get(&buf->chan->kref);
 return buf;

free_buf:
 kfree(buf->padding);
 kfree(buf);
 return ((void*)0);
}
