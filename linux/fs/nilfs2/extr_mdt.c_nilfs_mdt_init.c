
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nilfs_mdt_info {int mi_sem; } ;
struct inode {TYPE_1__* i_mapping; int * i_fop; int * i_op; int i_mode; struct nilfs_mdt_info* i_private; } ;
typedef int gfp_t ;
struct TYPE_2__ {int * a_ops; } ;


 int ENOMEM ;
 int GFP_NOFS ;
 int S_IFREG ;
 int def_mdt_aops ;
 int def_mdt_fops ;
 int def_mdt_iops ;
 int init_rwsem (int *) ;
 struct nilfs_mdt_info* kzalloc (int ,int ) ;
 int mapping_set_gfp_mask (TYPE_1__*,int ) ;
 int max (int,size_t) ;

int nilfs_mdt_init(struct inode *inode, gfp_t gfp_mask, size_t objsz)
{
 struct nilfs_mdt_info *mi;

 mi = kzalloc(max(sizeof(*mi), objsz), GFP_NOFS);
 if (!mi)
  return -ENOMEM;

 init_rwsem(&mi->mi_sem);
 inode->i_private = mi;

 inode->i_mode = S_IFREG;
 mapping_set_gfp_mask(inode->i_mapping, gfp_mask);

 inode->i_op = &def_mdt_iops;
 inode->i_fop = &def_mdt_fops;
 inode->i_mapping->a_ops = &def_mdt_aops;

 return 0;
}
