
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct inode {TYPE_3__* i_sb; int i_mode; } ;
struct TYPE_6__ {TYPE_2__* s_export_op; TYPE_1__* s_type; } ;
struct TYPE_5__ {int fh_to_dentry; } ;
struct TYPE_4__ {int fs_flags; } ;


 int EINVAL ;
 int ENOTDIR ;
 int FS_REQUIRES_DEV ;
 int NFSEXP_FSID ;
 int NFSEXP_READONLY ;
 int NFSEXP_V4ROOT ;
 int S_ISDIR (int ) ;
 int S_ISLNK (int ) ;
 int S_ISREG (int ) ;
 int dprintk (char*) ;

__attribute__((used)) static int check_export(struct inode *inode, int *flags, unsigned char *uuid)
{





 if (!S_ISDIR(inode->i_mode) &&
     !S_ISLNK(inode->i_mode) &&
     !S_ISREG(inode->i_mode))
  return -ENOTDIR;





 if (*flags & NFSEXP_V4ROOT)
  *flags |= NFSEXP_READONLY;
 if (!(inode->i_sb->s_type->fs_flags & FS_REQUIRES_DEV) &&
     !(*flags & NFSEXP_FSID) &&
     uuid == ((void*)0)) {
  dprintk("exp_export: export of non-dev fs without fsid\n");
  return -EINVAL;
 }

 if (!inode->i_sb->s_export_op ||
     !inode->i_sb->s_export_op->fh_to_dentry) {
  dprintk("exp_export: export of invalid fs type.\n");
  return -EINVAL;
 }

 return 0;

}
