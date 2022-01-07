
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int root; } ;
struct ctl_table_set {TYPE_1__ dir; } ;


 int RB_EMPTY_ROOT (int *) ;
 int WARN_ON (int) ;

void retire_sysctl_set(struct ctl_table_set *set)
{
 WARN_ON(!RB_EMPTY_ROOT(&set->dir.root));
}
