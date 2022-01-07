
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct path {TYPE_4__* dentry; } ;
struct TYPE_9__ {scalar_t__* val; } ;
typedef TYPE_3__ __kernel_fsid_t ;
struct TYPE_10__ {TYPE_2__* d_sb; } ;
struct TYPE_8__ {TYPE_1__* s_export_op; TYPE_4__* s_root; } ;
struct TYPE_7__ {int fh_to_dentry; } ;


 int ENODEV ;
 int EOPNOTSUPP ;
 int EXDEV ;
 int vfs_get_fsid (TYPE_4__*,TYPE_3__*) ;

__attribute__((used)) static int fanotify_test_fid(struct path *path, __kernel_fsid_t *fsid)
{
 __kernel_fsid_t root_fsid;
 int err;




 err = vfs_get_fsid(path->dentry, fsid);
 if (err)
  return err;

 if (!fsid->val[0] && !fsid->val[1])
  return -ENODEV;





 err = vfs_get_fsid(path->dentry->d_sb->s_root, &root_fsid);
 if (err)
  return err;

 if (root_fsid.val[0] != fsid->val[0] ||
     root_fsid.val[1] != fsid->val[1])
  return -EXDEV;
 if (!path->dentry->d_sb->s_export_op ||
     !path->dentry->d_sb->s_export_op->fh_to_dentry)
  return -EOPNOTSUPP;

 return 0;
}
