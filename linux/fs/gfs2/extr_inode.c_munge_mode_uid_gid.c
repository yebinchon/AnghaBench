
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct inode {int i_mode; int i_gid; int i_uid; } ;
struct TYPE_6__ {int i_mode; int i_gid; int i_uid; } ;
struct gfs2_inode {TYPE_3__ i_inode; } ;
struct TYPE_4__ {scalar_t__ ar_suiddir; } ;
struct TYPE_5__ {TYPE_1__ sd_args; } ;


 TYPE_2__* GFS2_SB (TYPE_3__*) ;
 int GLOBAL_ROOT_UID ;
 scalar_t__ S_ISDIR (int) ;
 int S_ISGID ;
 int S_ISUID ;
 int current_fsgid () ;
 int current_fsuid () ;
 int uid_eq (int ,int ) ;

__attribute__((used)) static void munge_mode_uid_gid(const struct gfs2_inode *dip,
          struct inode *inode)
{
 if (GFS2_SB(&dip->i_inode)->sd_args.ar_suiddir &&
     (dip->i_inode.i_mode & S_ISUID) &&
     !uid_eq(dip->i_inode.i_uid, GLOBAL_ROOT_UID)) {
  if (S_ISDIR(inode->i_mode))
   inode->i_mode |= S_ISUID;
  else if (!uid_eq(dip->i_inode.i_uid, current_fsuid()))
   inode->i_mode &= ~07111;
  inode->i_uid = dip->i_inode.i_uid;
 } else
  inode->i_uid = current_fsuid();

 if (dip->i_inode.i_mode & S_ISGID) {
  if (S_ISDIR(inode->i_mode))
   inode->i_mode |= S_ISGID;
  inode->i_gid = dip->i_inode.i_gid;
 } else
  inode->i_gid = current_fsgid();
}
