
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int i_ino; TYPE_1__* i_sb; } ;
struct audit_fsnotify_mark {int ino; int dev; } ;
struct TYPE_2__ {int s_dev; } ;


 int AUDIT_DEV_UNSET ;
 int AUDIT_INO_UNSET ;

__attribute__((used)) static void audit_update_mark(struct audit_fsnotify_mark *audit_mark,
        const struct inode *inode)
{
 audit_mark->dev = inode ? inode->i_sb->s_dev : AUDIT_DEV_UNSET;
 audit_mark->ino = inode ? inode->i_ino : AUDIT_INO_UNSET;
}
