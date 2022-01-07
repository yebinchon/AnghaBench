
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct work_struct {int dummy; } ;


 int __flush_work (struct work_struct*,int) ;

bool flush_work(struct work_struct *work)
{
 return __flush_work(work, 0);
}
