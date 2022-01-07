
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u64 ;
typedef void* u32 ;
struct the_nilfs {unsigned long long ns_blocks_per_segment; unsigned long long ns_nsegments; unsigned long long ns_first_data_block; unsigned long ns_nrsvsegs; } ;
struct super_block {int s_blocksize; TYPE_1__* s_bdev; } ;
struct nilfs_root {int inodes_count; int ifile; struct the_nilfs* nilfs; } ;
struct TYPE_5__ {void** val; } ;
struct kstatfs {unsigned long long f_blocks; unsigned long f_bfree; unsigned long f_bavail; int f_files; int f_ffree; TYPE_2__ f_fsid; int f_namelen; int f_bsize; int f_type; } ;
struct dentry {struct super_block* d_sb; } ;
typedef unsigned long sector_t ;
struct TYPE_6__ {struct nilfs_root* i_root; } ;
struct TYPE_4__ {int bd_dev; } ;


 int ERANGE ;
 int KERN_WARNING ;
 TYPE_3__* NILFS_I (int ) ;
 int NILFS_NAME_LEN ;
 int NILFS_SUPER_MAGIC ;
 int atomic64_read (int *) ;
 int d_inode (struct dentry*) ;
 int huge_encode_dev (int ) ;
 int nilfs_count_free_blocks (struct the_nilfs*,unsigned long*) ;
 int nilfs_ifile_count_free_inodes (int ,int*,int*) ;
 int nilfs_msg (struct super_block*,int ,char*,int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int nilfs_statfs(struct dentry *dentry, struct kstatfs *buf)
{
 struct super_block *sb = dentry->d_sb;
 struct nilfs_root *root = NILFS_I(d_inode(dentry))->i_root;
 struct the_nilfs *nilfs = root->nilfs;
 u64 id = huge_encode_dev(sb->s_bdev->bd_dev);
 unsigned long long blocks;
 unsigned long overhead;
 unsigned long nrsvblocks;
 sector_t nfreeblocks;
 u64 nmaxinodes, nfreeinodes;
 int err;







 blocks = nilfs->ns_blocks_per_segment * nilfs->ns_nsegments
  - nilfs->ns_first_data_block;
 nrsvblocks = nilfs->ns_nrsvsegs * nilfs->ns_blocks_per_segment;







 overhead = 0;

 err = nilfs_count_free_blocks(nilfs, &nfreeblocks);
 if (unlikely(err))
  return err;

 err = nilfs_ifile_count_free_inodes(root->ifile,
         &nmaxinodes, &nfreeinodes);
 if (unlikely(err)) {
  nilfs_msg(sb, KERN_WARNING,
     "failed to count free inodes: err=%d", err);
  if (err == -ERANGE) {






   nmaxinodes = atomic64_read(&root->inodes_count);
   nfreeinodes = 0;
   err = 0;
  } else
   return err;
 }

 buf->f_type = NILFS_SUPER_MAGIC;
 buf->f_bsize = sb->s_blocksize;
 buf->f_blocks = blocks - overhead;
 buf->f_bfree = nfreeblocks;
 buf->f_bavail = (buf->f_bfree >= nrsvblocks) ?
  (buf->f_bfree - nrsvblocks) : 0;
 buf->f_files = nmaxinodes;
 buf->f_ffree = nfreeinodes;
 buf->f_namelen = NILFS_NAME_LEN;
 buf->f_fsid.val[0] = (u32)id;
 buf->f_fsid.val[1] = (u32)(id >> 32);

 return 0;
}
