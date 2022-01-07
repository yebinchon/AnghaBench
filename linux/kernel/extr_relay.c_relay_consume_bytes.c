
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rchan_buf {int bytes_consumed; TYPE_1__* chan; int cpu; } ;
struct TYPE_2__ {int subbuf_size; } ;


 int relay_subbufs_consumed (TYPE_1__*,int ,int) ;

__attribute__((used)) static void relay_consume_bytes(struct rchan_buf *rbuf, int bytes_consumed)
{
 rbuf->bytes_consumed += bytes_consumed;

 if (rbuf->bytes_consumed >= rbuf->chan->subbuf_size) {
  relay_subbufs_consumed(rbuf->chan, rbuf->cpu, 1);
  rbuf->bytes_consumed %= rbuf->chan->subbuf_size;
 }
}
