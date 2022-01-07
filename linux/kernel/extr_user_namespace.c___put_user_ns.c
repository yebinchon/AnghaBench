
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct user_namespace {int work; } ;


 int schedule_work (int *) ;

void __put_user_ns(struct user_namespace *ns)
{
 schedule_work(&ns->work);
}
