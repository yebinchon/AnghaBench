
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct delayed_work {int work; } ;


 int __cancel_work (int *,int) ;

bool cancel_delayed_work(struct delayed_work *dwork)
{
 return __cancel_work(&dwork->work, 1);
}
