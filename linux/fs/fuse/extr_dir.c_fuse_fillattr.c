
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_11__ {int tv_nsec; int tv_sec; } ;
struct TYPE_10__ {int tv_nsec; int tv_sec; } ;
struct TYPE_9__ {int tv_nsec; int tv_sec; } ;
struct kstat {int mode; int blksize; int blocks; int size; TYPE_5__ ctime; TYPE_4__ mtime; TYPE_3__ atime; int rdev; int gid; int uid; int nlink; int ino; int dev; } ;
struct TYPE_8__ {int tv_nsec; int tv_sec; } ;
struct TYPE_7__ {int tv_nsec; int tv_sec; } ;
struct inode {int i_mode; TYPE_6__* i_sb; int i_rdev; TYPE_2__ i_ctime; TYPE_1__ i_mtime; } ;
struct fuse_conn {int user_ns; scalar_t__ writeback_cache; } ;
struct fuse_attr {int mode; scalar_t__ blksize; int blocks; int size; int ctimensec; int ctime; int mtimensec; int mtime; int atimensec; int atime; int gid; int uid; int nlink; int ino; } ;
struct TYPE_12__ {unsigned int s_blocksize_bits; int s_dev; } ;


 int S_IFMT ;
 scalar_t__ S_ISREG (int) ;
 struct fuse_conn* get_fuse_conn (struct inode*) ;
 int i_size_read (struct inode*) ;
 unsigned int ilog2 (scalar_t__) ;
 int make_kgid (int ,int ) ;
 int make_kuid (int ,int ) ;

__attribute__((used)) static void fuse_fillattr(struct inode *inode, struct fuse_attr *attr,
     struct kstat *stat)
{
 unsigned int blkbits;
 struct fuse_conn *fc = get_fuse_conn(inode);


 if (fc->writeback_cache && S_ISREG(inode->i_mode)) {
  attr->size = i_size_read(inode);
  attr->mtime = inode->i_mtime.tv_sec;
  attr->mtimensec = inode->i_mtime.tv_nsec;
  attr->ctime = inode->i_ctime.tv_sec;
  attr->ctimensec = inode->i_ctime.tv_nsec;
 }

 stat->dev = inode->i_sb->s_dev;
 stat->ino = attr->ino;
 stat->mode = (inode->i_mode & S_IFMT) | (attr->mode & 07777);
 stat->nlink = attr->nlink;
 stat->uid = make_kuid(fc->user_ns, attr->uid);
 stat->gid = make_kgid(fc->user_ns, attr->gid);
 stat->rdev = inode->i_rdev;
 stat->atime.tv_sec = attr->atime;
 stat->atime.tv_nsec = attr->atimensec;
 stat->mtime.tv_sec = attr->mtime;
 stat->mtime.tv_nsec = attr->mtimensec;
 stat->ctime.tv_sec = attr->ctime;
 stat->ctime.tv_nsec = attr->ctimensec;
 stat->size = attr->size;
 stat->blocks = attr->blocks;

 if (attr->blksize != 0)
  blkbits = ilog2(attr->blksize);
 else
  blkbits = inode->i_sb->s_blocksize_bits;

 stat->blksize = 1 << blkbits;
}
