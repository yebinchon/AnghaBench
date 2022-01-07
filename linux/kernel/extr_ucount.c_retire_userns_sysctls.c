
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct user_namespace {int set; TYPE_1__* sysctls; } ;
struct ctl_table {int dummy; } ;
struct TYPE_2__ {struct ctl_table* ctl_table_arg; } ;


 int kfree (struct ctl_table*) ;
 int retire_sysctl_set (int *) ;
 int unregister_sysctl_table (TYPE_1__*) ;

void retire_userns_sysctls(struct user_namespace *ns)
{
}
