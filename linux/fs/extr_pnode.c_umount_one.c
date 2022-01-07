
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mnt_flags; } ;
struct mount {int mnt_list; int mnt_umounting; int mnt_child; TYPE_1__ mnt; } ;
struct list_head {int dummy; } ;


 int CLEAR_MNT_MARK (struct mount*) ;
 int MNT_UMOUNT ;
 int list_del_init (int *) ;
 int list_move_tail (int *,struct list_head*) ;

__attribute__((used)) static void umount_one(struct mount *mnt, struct list_head *to_umount)
{
 CLEAR_MNT_MARK(mnt);
 mnt->mnt.mnt_flags |= MNT_UMOUNT;
 list_del_init(&mnt->mnt_child);
 list_del_init(&mnt->mnt_umounting);
 list_move_tail(&mnt->mnt_list, to_umount);
}
