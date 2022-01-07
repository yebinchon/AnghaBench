
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mount {TYPE_2__* mnt_parent; } ;
typedef enum umount_tree_flags { ____Placeholder_umount_tree_flags } umount_tree_flags ;
struct TYPE_3__ {int mnt_flags; } ;
struct TYPE_4__ {TYPE_1__ mnt; } ;


 scalar_t__ IS_MNT_LOCKED (struct mount*) ;
 int MNT_UMOUNT ;
 int UMOUNT_CONNECTED ;
 int UMOUNT_SYNC ;
 int mnt_has_parent (struct mount*) ;

__attribute__((used)) static bool disconnect_mount(struct mount *mnt, enum umount_tree_flags how)
{

 if (how & UMOUNT_SYNC)
  return 1;


 if (!mnt_has_parent(mnt))
  return 1;





 if (!(mnt->mnt_parent->mnt.mnt_flags & MNT_UMOUNT))
  return 1;


 if (how & UMOUNT_CONNECTED)
  return 0;


 if (IS_MNT_LOCKED(mnt))
  return 0;


 return 1;
}
