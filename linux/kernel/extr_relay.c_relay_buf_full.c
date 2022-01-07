
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rchan_buf {size_t subbufs_produced; size_t subbufs_consumed; TYPE_1__* chan; } ;
struct TYPE_2__ {size_t n_subbufs; } ;



int relay_buf_full(struct rchan_buf *buf)
{
 size_t ready = buf->subbufs_produced - buf->subbufs_consumed;
 return (ready >= buf->chan->n_subbufs) ? 1 : 0;
}
