
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct rchan_buf {int data; TYPE_2__* chan; scalar_t__* padding; scalar_t__ offset; int start; scalar_t__ finalized; scalar_t__ bytes_consumed; scalar_t__ subbufs_consumed; scalar_t__ subbufs_produced; int wakeup_work; int kref; int read_wait; } ;
struct TYPE_4__ {size_t n_subbufs; TYPE_1__* cb; } ;
struct TYPE_3__ {int (* subbuf_start ) (struct rchan_buf*,int ,int *,int ) ;} ;


 int init_irq_work (int *,int ) ;
 int init_waitqueue_head (int *) ;
 int irq_work_sync (int *) ;
 int kref_init (int *) ;
 int stub1 (struct rchan_buf*,int ,int *,int ) ;
 int wakeup_readers ;

__attribute__((used)) static void __relay_reset(struct rchan_buf *buf, unsigned int init)
{
 size_t i;

 if (init) {
  init_waitqueue_head(&buf->read_wait);
  kref_init(&buf->kref);
  init_irq_work(&buf->wakeup_work, wakeup_readers);
 } else {
  irq_work_sync(&buf->wakeup_work);
 }

 buf->subbufs_produced = 0;
 buf->subbufs_consumed = 0;
 buf->bytes_consumed = 0;
 buf->finalized = 0;
 buf->data = buf->start;
 buf->offset = 0;

 for (i = 0; i < buf->chan->n_subbufs; i++)
  buf->padding[i] = 0;

 buf->chan->cb->subbuf_start(buf, buf->data, ((void*)0), 0);
}
