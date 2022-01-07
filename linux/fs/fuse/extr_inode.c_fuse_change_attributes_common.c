
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_7__ {int tv_nsec; int tv_sec; } ;
struct TYPE_6__ {int tv_nsec; int tv_sec; } ;
struct TYPE_5__ {int tv_nsec; int tv_sec; } ;
struct inode {int i_mode; TYPE_4__* i_sb; int i_blkbits; TYPE_3__ i_ctime; TYPE_2__ i_mtime; TYPE_1__ i_atime; int i_blocks; int i_gid; int i_uid; int i_ino; } ;
struct fuse_inode {int orig_i_mode; int orig_ino; int inval_mask; int i_time; int attr_version; int lock; } ;
struct fuse_conn {int default_permissions; int writeback_cache; int user_ns; int attr_version; } ;
struct fuse_attr {int mode; scalar_t__ blksize; int ino; int ctimensec; int ctime; int mtimensec; int mtime; int atimensec; int atime; int blocks; int gid; int uid; int nlink; } ;
struct TYPE_8__ {int s_blocksize_bits; } ;


 int S_IFMT ;
 int S_ISREG (int) ;
 int S_ISVTX ;
 int WRITE_ONCE (int ,int ) ;
 int atomic64_inc_return (int *) ;
 int fuse_squash_ino (int ) ;
 struct fuse_conn* get_fuse_conn (struct inode*) ;
 struct fuse_inode* get_fuse_inode (struct inode*) ;
 int ilog2 (scalar_t__) ;
 int lockdep_assert_held (int *) ;
 int make_kgid (int ,int ) ;
 int make_kuid (int ,int ) ;
 int set_nlink (struct inode*,int ) ;

void fuse_change_attributes_common(struct inode *inode, struct fuse_attr *attr,
       u64 attr_valid)
{
 struct fuse_conn *fc = get_fuse_conn(inode);
 struct fuse_inode *fi = get_fuse_inode(inode);

 lockdep_assert_held(&fi->lock);

 fi->attr_version = atomic64_inc_return(&fc->attr_version);
 fi->i_time = attr_valid;
 WRITE_ONCE(fi->inval_mask, 0);

 inode->i_ino = fuse_squash_ino(attr->ino);
 inode->i_mode = (inode->i_mode & S_IFMT) | (attr->mode & 07777);
 set_nlink(inode, attr->nlink);
 inode->i_uid = make_kuid(fc->user_ns, attr->uid);
 inode->i_gid = make_kgid(fc->user_ns, attr->gid);
 inode->i_blocks = attr->blocks;
 inode->i_atime.tv_sec = attr->atime;
 inode->i_atime.tv_nsec = attr->atimensec;

 if (!fc->writeback_cache || !S_ISREG(inode->i_mode)) {
  inode->i_mtime.tv_sec = attr->mtime;
  inode->i_mtime.tv_nsec = attr->mtimensec;
  inode->i_ctime.tv_sec = attr->ctime;
  inode->i_ctime.tv_nsec = attr->ctimensec;
 }

 if (attr->blksize != 0)
  inode->i_blkbits = ilog2(attr->blksize);
 else
  inode->i_blkbits = inode->i_sb->s_blocksize_bits;






 fi->orig_i_mode = inode->i_mode;
 if (!fc->default_permissions)
  inode->i_mode &= ~S_ISVTX;

 fi->orig_ino = attr->ino;
}
