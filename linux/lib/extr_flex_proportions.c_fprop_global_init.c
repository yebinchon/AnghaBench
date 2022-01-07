
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fprop_global {int sequence; int events; scalar_t__ period; } ;
typedef int gfp_t ;


 int percpu_counter_init (int *,int,int ) ;
 int seqcount_init (int *) ;

int fprop_global_init(struct fprop_global *p, gfp_t gfp)
{
 int err;

 p->period = 0;

 err = percpu_counter_init(&p->events, 1, gfp);
 if (err)
  return err;
 seqcount_init(&p->sequence);
 return 0;
}
