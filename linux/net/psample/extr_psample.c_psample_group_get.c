
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct psample_group {int refcount; } ;
struct net {int dummy; } ;


 struct psample_group* psample_group_create (struct net*,int ) ;
 struct psample_group* psample_group_lookup (struct net*,int ) ;
 int psample_groups_lock ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

struct psample_group *psample_group_get(struct net *net, u32 group_num)
{
 struct psample_group *group;

 spin_lock_bh(&psample_groups_lock);

 group = psample_group_lookup(net, group_num);
 if (!group) {
  group = psample_group_create(net, group_num);
  if (!group)
   goto out;
 }
 group->refcount++;

out:
 spin_unlock_bh(&psample_groups_lock);
 return group;
}
