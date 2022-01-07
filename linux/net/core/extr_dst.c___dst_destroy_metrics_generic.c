
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dst_entry {int _metrics; } ;


 unsigned long DST_METRICS_READ_ONLY ;
 int __DST_METRICS_PTR (unsigned long) ;
 unsigned long cmpxchg (int *,unsigned long,unsigned long) ;
 int dst_default_metrics ;
 int kfree (int ) ;

void __dst_destroy_metrics_generic(struct dst_entry *dst, unsigned long old)
{
 unsigned long prev, new;

 new = ((unsigned long) &dst_default_metrics) | DST_METRICS_READ_ONLY;
 prev = cmpxchg(&dst->_metrics, old, new);
 if (prev == old)
  kfree(__DST_METRICS_PTR(old));
}
