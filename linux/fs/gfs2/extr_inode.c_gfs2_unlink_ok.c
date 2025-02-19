
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct qstr {int dummy; } ;
struct TYPE_5__ {int i_mode; int i_uid; } ;
struct gfs2_inode {TYPE_1__ i_inode; } ;


 int CAP_FOWNER ;
 int EPERM ;
 scalar_t__ IS_APPEND (TYPE_1__*) ;
 scalar_t__ IS_IMMUTABLE (TYPE_1__*) ;
 int MAY_EXEC ;
 int MAY_WRITE ;
 int S_ISVTX ;
 int capable (int ) ;
 int current_fsuid () ;
 int gfs2_dir_check (TYPE_1__*,struct qstr const*,struct gfs2_inode const*) ;
 int gfs2_permission (TYPE_1__*,int) ;
 int uid_eq (int ,int ) ;

__attribute__((used)) static int gfs2_unlink_ok(struct gfs2_inode *dip, const struct qstr *name,
     const struct gfs2_inode *ip)
{
 int error;

 if (IS_IMMUTABLE(&ip->i_inode) || IS_APPEND(&ip->i_inode))
  return -EPERM;

 if ((dip->i_inode.i_mode & S_ISVTX) &&
     !uid_eq(dip->i_inode.i_uid, current_fsuid()) &&
     !uid_eq(ip->i_inode.i_uid, current_fsuid()) && !capable(CAP_FOWNER))
  return -EPERM;

 if (IS_APPEND(&dip->i_inode))
  return -EPERM;

 error = gfs2_permission(&dip->i_inode, MAY_WRITE | MAY_EXEC);
 if (error)
  return error;

 return gfs2_dir_check(&dip->i_inode, name, ip);
}
