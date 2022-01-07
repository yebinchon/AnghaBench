
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clgstate {int state; int a3; int a2; int a4; int a1; } ;
struct netem_sched_data {struct clgstate clg; } ;




 int prandom_u32 () ;

__attribute__((used)) static bool loss_gilb_ell(struct netem_sched_data *q)
{
 struct clgstate *clg = &q->clg;

 switch (clg->state) {
 case 128:
  if (prandom_u32() < clg->a1)
   clg->state = 129;
  if (prandom_u32() < clg->a4)
   return 1;
  break;
 case 129:
  if (prandom_u32() < clg->a2)
   clg->state = 128;
  if (prandom_u32() > clg->a3)
   return 1;
 }

 return 0;
}
