
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct psample_group {int list; int group_num; struct net* net; } ;
struct net {int dummy; } ;


 int GFP_ATOMIC ;
 int PSAMPLE_CMD_NEW_GROUP ;
 struct psample_group* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int psample_group_notify (struct psample_group*,int ) ;
 int psample_groups_list ;

__attribute__((used)) static struct psample_group *psample_group_create(struct net *net,
        u32 group_num)
{
 struct psample_group *group;

 group = kzalloc(sizeof(*group), GFP_ATOMIC);
 if (!group)
  return ((void*)0);

 group->net = net;
 group->group_num = group_num;
 list_add_tail(&group->list, &psample_groups_list);

 psample_group_notify(group, PSAMPLE_CMD_NEW_GROUP);
 return group;
}
