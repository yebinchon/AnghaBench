
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct taprio_sched {int tk_offset; } ;
typedef int ktime_t ;


 int KTIME_MAX ;

 int ktime_get () ;
 int ktime_mono_to_any (int ,int) ;

__attribute__((used)) static ktime_t taprio_get_time(struct taprio_sched *q)
{
 ktime_t mono = ktime_get();

 switch (q->tk_offset) {
 case 128:
  return mono;
 default:
  return ktime_mono_to_any(mono, q->tk_offset);
 }

 return KTIME_MAX;
}
