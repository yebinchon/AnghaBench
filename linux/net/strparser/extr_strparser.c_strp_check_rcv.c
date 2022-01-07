
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strparser {int work; } ;


 int queue_work (int ,int *) ;
 int strp_wq ;

void strp_check_rcv(struct strparser *strp)
{
 queue_work(strp_wq, &strp->work);
}
