
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int umode_t ;
struct the_nilfs {int ns_next_gen_lock; int ns_next_generation; } ;
struct super_block {struct the_nilfs* s_fs_info; } ;
struct nilfs_root {int inodes_count; int ifile; } ;
struct nilfs_inode_info {int i_flags; scalar_t__ i_dir_start_lookup; int i_state; int i_bmap; int i_bh; struct nilfs_root* i_root; } ;
struct inode {scalar_t__ i_generation; int i_ctime; int i_atime; int i_mtime; int i_ino; int i_mapping; struct super_block* i_sb; } ;
typedef int ino_t ;


 int BIT (int ) ;
 int EIO ;
 int ENOMEM ;
 struct inode* ERR_PTR (int) ;
 int NILFS_FL_INHERITED ;
 struct nilfs_inode_info* NILFS_I (struct inode*) ;
 int NILFS_I_BMAP ;
 int NILFS_I_NEW ;
 scalar_t__ S_ISDIR (int ) ;
 scalar_t__ S_ISLNK (int ) ;
 scalar_t__ S_ISREG (int ) ;
 int __GFP_FS ;
 int atomic64_inc (int *) ;
 int clear_nlink (struct inode*) ;
 int current_time (struct inode*) ;
 int inode_init_owner (struct inode*,struct inode*,int ) ;
 int iput (struct inode*) ;
 int make_bad_inode (struct inode*) ;
 int mapping_gfp_constraint (int ,int ) ;
 int mapping_set_gfp_mask (int ,int ) ;
 struct inode* new_inode (struct super_block*) ;
 int nilfs_bmap_read (int ,int *) ;
 int nilfs_ifile_create_inode (int ,int *,int *) ;
 int nilfs_init_acl (struct inode*,struct inode*) ;
 scalar_t__ nilfs_insert_inode_locked (struct inode*,struct nilfs_root*,int ) ;
 int nilfs_mask_flags (int ,int) ;
 int nilfs_set_inode_flags (struct inode*) ;
 int set_bit (int ,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ unlikely (int) ;
 int unlock_new_inode (struct inode*) ;

struct inode *nilfs_new_inode(struct inode *dir, umode_t mode)
{
 struct super_block *sb = dir->i_sb;
 struct the_nilfs *nilfs = sb->s_fs_info;
 struct inode *inode;
 struct nilfs_inode_info *ii;
 struct nilfs_root *root;
 int err = -ENOMEM;
 ino_t ino;

 inode = new_inode(sb);
 if (unlikely(!inode))
  goto failed;

 mapping_set_gfp_mask(inode->i_mapping,
      mapping_gfp_constraint(inode->i_mapping, ~__GFP_FS));

 root = NILFS_I(dir)->i_root;
 ii = NILFS_I(inode);
 ii->i_state = BIT(NILFS_I_NEW);
 ii->i_root = root;

 err = nilfs_ifile_create_inode(root->ifile, &ino, &ii->i_bh);
 if (unlikely(err))
  goto failed_ifile_create_inode;


 atomic64_inc(&root->inodes_count);
 inode_init_owner(inode, dir, mode);
 inode->i_ino = ino;
 inode->i_mtime = inode->i_atime = inode->i_ctime = current_time(inode);

 if (S_ISREG(mode) || S_ISDIR(mode) || S_ISLNK(mode)) {
  err = nilfs_bmap_read(ii->i_bmap, ((void*)0));
  if (err < 0)
   goto failed_after_creation;

  set_bit(NILFS_I_BMAP, &ii->i_state);

 }

 ii->i_flags = nilfs_mask_flags(
  mode, NILFS_I(dir)->i_flags & NILFS_FL_INHERITED);



 ii->i_dir_start_lookup = 0;
 nilfs_set_inode_flags(inode);
 spin_lock(&nilfs->ns_next_gen_lock);
 inode->i_generation = nilfs->ns_next_generation++;
 spin_unlock(&nilfs->ns_next_gen_lock);
 if (nilfs_insert_inode_locked(inode, root, ino) < 0) {
  err = -EIO;
  goto failed_after_creation;
 }

 err = nilfs_init_acl(inode, dir);
 if (unlikely(err))




  goto failed_after_creation;

 return inode;

 failed_after_creation:
 clear_nlink(inode);
 unlock_new_inode(inode);
 iput(inode);



 goto failed;

 failed_ifile_create_inode:
 make_bad_inode(inode);
 iput(inode);
 failed:
 return ERR_PTR(err);
}
