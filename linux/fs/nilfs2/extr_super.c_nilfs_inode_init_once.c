
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nilfs_inode_info {int vfs_inode; int i_bmap_data; int * i_bmap; int i_btnode_cache; int xattr_sem; int i_dirty; } ;


 int INIT_LIST_HEAD (int *) ;
 int address_space_init_once (int *) ;
 int init_rwsem (int *) ;
 int inode_init_once (int *) ;

__attribute__((used)) static void nilfs_inode_init_once(void *obj)
{
 struct nilfs_inode_info *ii = obj;

 INIT_LIST_HEAD(&ii->i_dirty);



 address_space_init_once(&ii->i_btnode_cache);
 ii->i_bmap = &ii->i_bmap_data;
 inode_init_once(&ii->vfs_inode);
}
