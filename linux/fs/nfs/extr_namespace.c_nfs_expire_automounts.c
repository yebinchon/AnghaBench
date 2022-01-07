
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct work_struct {int dummy; } ;
struct list_head {int dummy; } ;


 int list_empty (struct list_head*) ;
 int mark_mounts_for_expiry (struct list_head*) ;
 struct list_head nfs_automount_list ;
 int nfs_automount_task ;
 int nfs_mountpoint_expiry_timeout ;
 int schedule_delayed_work (int *,int ) ;

__attribute__((used)) static void nfs_expire_automounts(struct work_struct *work)
{
 struct list_head *list = &nfs_automount_list;

 mark_mounts_for_expiry(list);
 if (!list_empty(list))
  schedule_delayed_work(&nfs_automount_task, nfs_mountpoint_expiry_timeout);
}
