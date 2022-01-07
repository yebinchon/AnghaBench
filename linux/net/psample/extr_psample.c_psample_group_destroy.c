
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct psample_group {int list; } ;


 int PSAMPLE_CMD_DEL_GROUP ;
 int kfree_rcu (struct psample_group*,int ) ;
 int list_del (int *) ;
 int psample_group_notify (struct psample_group*,int ) ;
 int rcu ;

__attribute__((used)) static void psample_group_destroy(struct psample_group *group)
{
 psample_group_notify(group, PSAMPLE_CMD_DEL_GROUP);
 list_del(&group->list);
 kfree_rcu(group, rcu);
}
