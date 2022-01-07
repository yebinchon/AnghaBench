
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct clgstate {int state; scalar_t__ a3; scalar_t__ a2; scalar_t__ a5; scalar_t__ a4; scalar_t__ a1; } ;
struct netem_sched_data {struct clgstate clg; } ;






 scalar_t__ prandom_u32 () ;

__attribute__((used)) static bool loss_4state(struct netem_sched_data *q)
{
 struct clgstate *clg = &q->clg;
 u32 rnd = prandom_u32();
 switch (clg->state) {
 case 128:
  if (rnd < clg->a4) {
   clg->state = 131;
   return 1;
  } else if (clg->a4 < rnd && rnd < clg->a1 + clg->a4) {
   clg->state = 130;
   return 1;
  } else if (clg->a1 + clg->a4 < rnd) {
   clg->state = 128;
  }

  break;
 case 129:
  if (rnd < clg->a5) {
   clg->state = 130;
   return 1;
  } else {
   clg->state = 129;
  }

  break;
 case 130:
  if (rnd < clg->a3)
   clg->state = 129;
  else if (clg->a3 < rnd && rnd < clg->a2 + clg->a3) {
   clg->state = 128;
  } else if (clg->a2 + clg->a3 < rnd) {
   clg->state = 130;
   return 1;
  }
  break;
 case 131:
  clg->state = 128;
  break;
 }

 return 0;
}
