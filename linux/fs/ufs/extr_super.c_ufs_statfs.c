
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u64 ;
typedef void* u32 ;
struct TYPE_6__ {int cs_nifree; } ;
struct ufs_sb_private_info {scalar_t__ s_root_blocks; int s_ncg; int s_ipg; TYPE_2__ cs_total; int s_dsize; } ;
struct super_block {int s_blocksize; TYPE_1__* s_bdev; } ;
struct TYPE_7__ {void** val; } ;
struct kstatfs {scalar_t__ f_bfree; scalar_t__ f_bavail; int f_files; TYPE_3__ f_fsid; int f_namelen; int f_bsize; int f_ffree; int f_blocks; int f_type; } ;
struct dentry {struct super_block* d_sb; } ;
struct TYPE_8__ {unsigned int s_flags; int s_lock; struct ufs_sb_private_info* s_uspi; } ;
struct TYPE_5__ {int bd_dev; } ;


 int UFS2_MAGIC ;
 int UFS_MAGIC ;
 int UFS_MAXNAMLEN ;
 TYPE_4__* UFS_SB (struct super_block*) ;
 unsigned int UFS_TYPE_MASK ;
 unsigned int UFS_TYPE_UFS2 ;
 int huge_encode_dev (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ ufs_freefrags (struct ufs_sb_private_info*) ;

__attribute__((used)) static int ufs_statfs(struct dentry *dentry, struct kstatfs *buf)
{
 struct super_block *sb = dentry->d_sb;
 struct ufs_sb_private_info *uspi= UFS_SB(sb)->s_uspi;
 unsigned flags = UFS_SB(sb)->s_flags;
 u64 id = huge_encode_dev(sb->s_bdev->bd_dev);

 mutex_lock(&UFS_SB(sb)->s_lock);

 if ((flags & UFS_TYPE_MASK) == UFS_TYPE_UFS2)
  buf->f_type = UFS2_MAGIC;
 else
  buf->f_type = UFS_MAGIC;

 buf->f_blocks = uspi->s_dsize;
 buf->f_bfree = ufs_freefrags(uspi);
 buf->f_ffree = uspi->cs_total.cs_nifree;
 buf->f_bsize = sb->s_blocksize;
 buf->f_bavail = (buf->f_bfree > uspi->s_root_blocks)
  ? (buf->f_bfree - uspi->s_root_blocks) : 0;
 buf->f_files = uspi->s_ncg * uspi->s_ipg;
 buf->f_namelen = UFS_MAXNAMLEN;
 buf->f_fsid.val[0] = (u32)id;
 buf->f_fsid.val[1] = (u32)(id >> 32);

 mutex_unlock(&UFS_SB(sb)->s_lock);

 return 0;
}
