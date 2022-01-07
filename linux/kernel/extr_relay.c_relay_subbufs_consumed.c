
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rchan_buf {size_t subbufs_produced; size_t subbufs_consumed; } ;
struct rchan {size_t n_subbufs; int buf; } ;


 unsigned int NR_CPUS ;
 struct rchan_buf** per_cpu_ptr (int ,unsigned int) ;

void relay_subbufs_consumed(struct rchan *chan,
       unsigned int cpu,
       size_t subbufs_consumed)
{
 struct rchan_buf *buf;

 if (!chan || cpu >= NR_CPUS)
  return;

 buf = *per_cpu_ptr(chan->buf, cpu);
 if (!buf || subbufs_consumed > chan->n_subbufs)
  return;

 if (subbufs_consumed > buf->subbufs_produced - buf->subbufs_consumed)
  buf->subbufs_consumed = buf->subbufs_produced;
 else
  buf->subbufs_consumed += subbufs_consumed;
}
