
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nilfs_inode_info {scalar_t__ i_root; int i_btnode_cache; int i_bmap; int i_state; int * i_bh; int i_dirty; } ;
struct inode {scalar_t__ i_ino; } ;


 int BUG_ON (int) ;
 struct nilfs_inode_info* NILFS_I (struct inode*) ;
 int NILFS_I_BMAP ;
 scalar_t__ NILFS_ROOT_INO ;
 int brelse (int *) ;
 int list_empty (int *) ;
 int nilfs_bmap_clear (int ) ;
 int nilfs_btnode_cache_clear (int *) ;
 scalar_t__ nilfs_is_metadata_file_inode (struct inode*) ;
 int nilfs_mdt_clear (struct inode*) ;
 int nilfs_put_root (scalar_t__) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void nilfs_clear_inode(struct inode *inode)
{
 struct nilfs_inode_info *ii = NILFS_I(inode);




 BUG_ON(!list_empty(&ii->i_dirty));
 brelse(ii->i_bh);
 ii->i_bh = ((void*)0);

 if (nilfs_is_metadata_file_inode(inode))
  nilfs_mdt_clear(inode);

 if (test_bit(NILFS_I_BMAP, &ii->i_state))
  nilfs_bmap_clear(ii->i_bmap);

 nilfs_btnode_cache_clear(&ii->i_btnode_cache);

 if (ii->i_root && inode->i_ino == NILFS_ROOT_INO)
  nilfs_put_root(ii->i_root);
}
