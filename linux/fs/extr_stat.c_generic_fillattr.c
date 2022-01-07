
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kstat {int blocks; int blksize; int ctime; int mtime; int atime; int size; int rdev; int gid; int uid; int nlink; int mode; int ino; int dev; } ;
struct inode {int i_blocks; int i_ctime; int i_mtime; int i_atime; int i_rdev; int i_gid; int i_uid; int i_nlink; int i_mode; int i_ino; TYPE_1__* i_sb; } ;
struct TYPE_2__ {int s_dev; } ;


 int i_blocksize (struct inode*) ;
 int i_size_read (struct inode*) ;

void generic_fillattr(struct inode *inode, struct kstat *stat)
{
 stat->dev = inode->i_sb->s_dev;
 stat->ino = inode->i_ino;
 stat->mode = inode->i_mode;
 stat->nlink = inode->i_nlink;
 stat->uid = inode->i_uid;
 stat->gid = inode->i_gid;
 stat->rdev = inode->i_rdev;
 stat->size = i_size_read(inode);
 stat->atime = inode->i_atime;
 stat->mtime = inode->i_mtime;
 stat->ctime = inode->i_ctime;
 stat->blksize = i_blocksize(inode);
 stat->blocks = inode->i_blocks;
}
