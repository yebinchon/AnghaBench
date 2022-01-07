
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {size_t s_blocksize; } ;
struct nilfs_inode {int dummy; } ;
struct nilfs_cpfile_header {int dummy; } ;
struct inode {int i_state; } ;


 int EINVAL ;
 int ENOMEM ;
 int I_NEW ;
 int KERN_ERR ;
 int NILFS_CPFILE_INO ;
 int NILFS_MDT_GFP ;
 size_t NILFS_MIN_CHECKPOINT_SIZE ;
 int iget_failed (struct inode*) ;
 struct inode* nilfs_iget_locked (struct super_block*,int *,int ) ;
 int nilfs_mdt_init (struct inode*,int ,int ) ;
 int nilfs_mdt_set_entry_size (struct inode*,size_t,int) ;
 int nilfs_msg (struct super_block*,int ,char*,size_t) ;
 int nilfs_read_inode_common (struct inode*,struct nilfs_inode*) ;
 scalar_t__ unlikely (int) ;
 int unlock_new_inode (struct inode*) ;

int nilfs_cpfile_read(struct super_block *sb, size_t cpsize,
        struct nilfs_inode *raw_inode, struct inode **inodep)
{
 struct inode *cpfile;
 int err;

 if (cpsize > sb->s_blocksize) {
  nilfs_msg(sb, KERN_ERR,
     "too large checkpoint size: %zu bytes", cpsize);
  return -EINVAL;
 } else if (cpsize < NILFS_MIN_CHECKPOINT_SIZE) {
  nilfs_msg(sb, KERN_ERR,
     "too small checkpoint size: %zu bytes", cpsize);
  return -EINVAL;
 }

 cpfile = nilfs_iget_locked(sb, ((void*)0), NILFS_CPFILE_INO);
 if (unlikely(!cpfile))
  return -ENOMEM;
 if (!(cpfile->i_state & I_NEW))
  goto out;

 err = nilfs_mdt_init(cpfile, NILFS_MDT_GFP, 0);
 if (err)
  goto failed;

 nilfs_mdt_set_entry_size(cpfile, cpsize,
     sizeof(struct nilfs_cpfile_header));

 err = nilfs_read_inode_common(cpfile, raw_inode);
 if (err)
  goto failed;

 unlock_new_inode(cpfile);
 out:
 *inodep = cpfile;
 return 0;
 failed:
 iget_failed(cpfile);
 return err;
}
