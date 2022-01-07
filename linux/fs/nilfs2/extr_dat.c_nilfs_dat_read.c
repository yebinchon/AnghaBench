
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {size_t s_blocksize; } ;
struct nilfs_inode {int dummy; } ;
struct TYPE_2__ {int mi_sem; } ;
struct nilfs_dat_info {int shadow; int palloc_cache; TYPE_1__ mi; } ;
struct lock_class_key {int dummy; } ;
struct inode {int i_state; } ;


 int EINVAL ;
 int ENOMEM ;
 int I_NEW ;
 int KERN_ERR ;
 struct nilfs_dat_info* NILFS_DAT_I (struct inode*) ;
 int NILFS_DAT_INO ;
 int NILFS_MDT_GFP ;
 size_t NILFS_MIN_DAT_ENTRY_SIZE ;
 int iget_failed (struct inode*) ;
 int lockdep_set_class (int *,struct lock_class_key*) ;
 struct inode* nilfs_iget_locked (struct super_block*,int *,int ) ;
 int nilfs_mdt_init (struct inode*,int ,int) ;
 int nilfs_mdt_setup_shadow_map (struct inode*,int *) ;
 int nilfs_msg (struct super_block*,int ,char*,size_t) ;
 int nilfs_palloc_init_blockgroup (struct inode*,size_t) ;
 int nilfs_palloc_setup_cache (struct inode*,int *) ;
 int nilfs_read_inode_common (struct inode*,struct nilfs_inode*) ;
 scalar_t__ unlikely (int) ;
 int unlock_new_inode (struct inode*) ;

int nilfs_dat_read(struct super_block *sb, size_t entry_size,
     struct nilfs_inode *raw_inode, struct inode **inodep)
{
 static struct lock_class_key dat_lock_key;
 struct inode *dat;
 struct nilfs_dat_info *di;
 int err;

 if (entry_size > sb->s_blocksize) {
  nilfs_msg(sb, KERN_ERR, "too large DAT entry size: %zu bytes",
     entry_size);
  return -EINVAL;
 } else if (entry_size < NILFS_MIN_DAT_ENTRY_SIZE) {
  nilfs_msg(sb, KERN_ERR, "too small DAT entry size: %zu bytes",
     entry_size);
  return -EINVAL;
 }

 dat = nilfs_iget_locked(sb, ((void*)0), NILFS_DAT_INO);
 if (unlikely(!dat))
  return -ENOMEM;
 if (!(dat->i_state & I_NEW))
  goto out;

 err = nilfs_mdt_init(dat, NILFS_MDT_GFP, sizeof(*di));
 if (err)
  goto failed;

 err = nilfs_palloc_init_blockgroup(dat, entry_size);
 if (err)
  goto failed;

 di = NILFS_DAT_I(dat);
 lockdep_set_class(&di->mi.mi_sem, &dat_lock_key);
 nilfs_palloc_setup_cache(dat, &di->palloc_cache);
 nilfs_mdt_setup_shadow_map(dat, &di->shadow);

 err = nilfs_read_inode_common(dat, raw_inode);
 if (err)
  goto failed;

 unlock_new_inode(dat);
 out:
 *inodep = dat;
 return 0;
 failed:
 iget_failed(dat);
 return err;
}
