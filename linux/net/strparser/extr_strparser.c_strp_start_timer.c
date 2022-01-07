
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strparser {int msg_timer_work; } ;


 long LONG_MAX ;
 int mod_delayed_work (int ,int *,long) ;
 int strp_wq ;

__attribute__((used)) static void strp_start_timer(struct strparser *strp, long timeo)
{
 if (timeo && timeo != LONG_MAX)
  mod_delayed_work(strp_wq, &strp->msg_timer_work, timeo);
}
