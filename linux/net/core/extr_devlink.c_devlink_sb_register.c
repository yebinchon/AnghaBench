
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef void* u16 ;
struct devlink_sb {unsigned int index; int list; void* egress_tc_count; void* ingress_tc_count; void* egress_pools_count; void* ingress_pools_count; int size; } ;
struct devlink {int lock; int sb_list; } ;


 int EEXIST ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ devlink_sb_index_exists (struct devlink*,unsigned int) ;
 struct devlink_sb* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int devlink_sb_register(struct devlink *devlink, unsigned int sb_index,
   u32 size, u16 ingress_pools_count,
   u16 egress_pools_count, u16 ingress_tc_count,
   u16 egress_tc_count)
{
 struct devlink_sb *devlink_sb;
 int err = 0;

 mutex_lock(&devlink->lock);
 if (devlink_sb_index_exists(devlink, sb_index)) {
  err = -EEXIST;
  goto unlock;
 }

 devlink_sb = kzalloc(sizeof(*devlink_sb), GFP_KERNEL);
 if (!devlink_sb) {
  err = -ENOMEM;
  goto unlock;
 }
 devlink_sb->index = sb_index;
 devlink_sb->size = size;
 devlink_sb->ingress_pools_count = ingress_pools_count;
 devlink_sb->egress_pools_count = egress_pools_count;
 devlink_sb->ingress_tc_count = ingress_tc_count;
 devlink_sb->egress_tc_count = egress_tc_count;
 list_add_tail(&devlink_sb->list, &devlink->sb_list);
unlock:
 mutex_unlock(&devlink->lock);
 return err;
}
