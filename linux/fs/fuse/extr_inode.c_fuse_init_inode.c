
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int tv_nsec; int tv_sec; } ;
struct TYPE_3__ {int tv_nsec; int tv_sec; } ;
struct inode {int i_mode; TYPE_2__ i_ctime; TYPE_1__ i_mtime; int i_size; } ;
struct fuse_attr {int mode; int rdev; int ctimensec; int ctime; int mtimensec; int mtime; int size; } ;


 int BUG () ;
 int S_IFMT ;
 scalar_t__ S_ISBLK (int) ;
 scalar_t__ S_ISCHR (int) ;
 scalar_t__ S_ISDIR (int) ;
 scalar_t__ S_ISFIFO (int) ;
 scalar_t__ S_ISLNK (int) ;
 scalar_t__ S_ISREG (int) ;
 scalar_t__ S_ISSOCK (int) ;
 int fuse_init_common (struct inode*) ;
 int fuse_init_dir (struct inode*) ;
 int fuse_init_file_inode (struct inode*) ;
 int fuse_init_symlink (struct inode*) ;
 int init_special_inode (struct inode*,int,int ) ;
 int new_decode_dev (int ) ;

__attribute__((used)) static void fuse_init_inode(struct inode *inode, struct fuse_attr *attr)
{
 inode->i_mode = attr->mode & S_IFMT;
 inode->i_size = attr->size;
 inode->i_mtime.tv_sec = attr->mtime;
 inode->i_mtime.tv_nsec = attr->mtimensec;
 inode->i_ctime.tv_sec = attr->ctime;
 inode->i_ctime.tv_nsec = attr->ctimensec;
 if (S_ISREG(inode->i_mode)) {
  fuse_init_common(inode);
  fuse_init_file_inode(inode);
 } else if (S_ISDIR(inode->i_mode))
  fuse_init_dir(inode);
 else if (S_ISLNK(inode->i_mode))
  fuse_init_symlink(inode);
 else if (S_ISCHR(inode->i_mode) || S_ISBLK(inode->i_mode) ||
   S_ISFIFO(inode->i_mode) || S_ISSOCK(inode->i_mode)) {
  fuse_init_common(inode);
  init_special_inode(inode, inode->i_mode,
       new_decode_dev(attr->rdev));
 } else
  BUG();
}
