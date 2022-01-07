
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strparser {int work; scalar_t__ paused; } ;


 int queue_work (int ,int *) ;
 int smp_mb () ;
 int strp_wq ;

void strp_unpause(struct strparser *strp)
{
 strp->paused = 0;


 smp_mb();

 queue_work(strp_wq, &strp->work);
}
