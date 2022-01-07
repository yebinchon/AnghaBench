
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_5__ {struct dentry* dentry; } ;
struct TYPE_4__ {struct dentry* dentry; } ;
struct tomoyo_obj_info {int* stat_valid; struct tomoyo_mini_stat* stat; TYPE_2__ path2; TYPE_1__ path1; } ;
struct tomoyo_mini_stat {int rdev; int dev; int mode; int ino; int gid; int uid; } ;
struct inode {int i_rdev; TYPE_3__* i_sb; int i_mode; int i_ino; int i_gid; int i_uid; } ;
struct dentry {int dummy; } ;
struct TYPE_6__ {int s_dev; } ;


 int TOMOYO_MAX_PATH_STAT ;


 struct inode* d_backing_inode (struct dentry*) ;
 struct dentry* dget_parent (struct dentry*) ;
 int dput (struct dentry*) ;

void tomoyo_get_attributes(struct tomoyo_obj_info *obj)
{
 u8 i;
 struct dentry *dentry = ((void*)0);

 for (i = 0; i < TOMOYO_MAX_PATH_STAT; i++) {
  struct inode *inode;

  switch (i) {
  case 129:
   dentry = obj->path1.dentry;
   if (!dentry)
    continue;
   break;
  case 128:
   dentry = obj->path2.dentry;
   if (!dentry)
    continue;
   break;
  default:
   if (!dentry)
    continue;
   dentry = dget_parent(dentry);
   break;
  }
  inode = d_backing_inode(dentry);
  if (inode) {
   struct tomoyo_mini_stat *stat = &obj->stat[i];

   stat->uid = inode->i_uid;
   stat->gid = inode->i_gid;
   stat->ino = inode->i_ino;
   stat->mode = inode->i_mode;
   stat->dev = inode->i_sb->s_dev;
   stat->rdev = inode->i_rdev;
   obj->stat_valid[i] = 1;
  }
  if (i & 1)
   dput(dentry);
 }
}
