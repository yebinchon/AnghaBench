
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct nilfs_root {int dummy; } ;
struct nilfs_inode {int dummy; } ;
struct nilfs_ifile_info {int dummy; } ;
struct inode {int i_state; } ;
struct TYPE_2__ {int palloc_cache; } ;


 int ENOMEM ;
 int I_NEW ;
 TYPE_1__* NILFS_IFILE_I (struct inode*) ;
 int NILFS_IFILE_INO ;
 int NILFS_MDT_GFP ;
 int iget_failed (struct inode*) ;
 struct inode* nilfs_iget_locked (struct super_block*,struct nilfs_root*,int ) ;
 int nilfs_mdt_init (struct inode*,int ,int) ;
 int nilfs_palloc_init_blockgroup (struct inode*,size_t) ;
 int nilfs_palloc_setup_cache (struct inode*,int *) ;
 int nilfs_read_inode_common (struct inode*,struct nilfs_inode*) ;
 scalar_t__ unlikely (int) ;
 int unlock_new_inode (struct inode*) ;

int nilfs_ifile_read(struct super_block *sb, struct nilfs_root *root,
       size_t inode_size, struct nilfs_inode *raw_inode,
       struct inode **inodep)
{
 struct inode *ifile;
 int err;

 ifile = nilfs_iget_locked(sb, root, NILFS_IFILE_INO);
 if (unlikely(!ifile))
  return -ENOMEM;
 if (!(ifile->i_state & I_NEW))
  goto out;

 err = nilfs_mdt_init(ifile, NILFS_MDT_GFP,
        sizeof(struct nilfs_ifile_info));
 if (err)
  goto failed;

 err = nilfs_palloc_init_blockgroup(ifile, inode_size);
 if (err)
  goto failed;

 nilfs_palloc_setup_cache(ifile, &NILFS_IFILE_I(ifile)->palloc_cache);

 err = nilfs_read_inode_common(ifile, raw_inode);
 if (err)
  goto failed;

 unlock_new_inode(ifile);
 out:
 *inodep = ifile;
 return 0;
 failed:
 iget_failed(ifile);
 return err;
}
