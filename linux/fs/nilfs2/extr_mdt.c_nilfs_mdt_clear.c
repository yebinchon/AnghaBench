
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nilfs_mdt_info {scalar_t__ mi_palloc_cache; } ;
struct inode {int dummy; } ;


 struct nilfs_mdt_info* NILFS_MDT (struct inode*) ;
 int nilfs_palloc_destroy_cache (struct inode*) ;

void nilfs_mdt_clear(struct inode *inode)
{
 struct nilfs_mdt_info *mdi = NILFS_MDT(inode);

 if (mdi->mi_palloc_cache)
  nilfs_palloc_destroy_cache(inode);
}
