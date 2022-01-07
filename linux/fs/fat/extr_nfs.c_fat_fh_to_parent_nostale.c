
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct inode {int dummy; } ;
struct fid {int dummy; } ;
struct fat_fid {int parent_i_pos_hi; int parent_i_pos_low; int parent_i_gen; } ;
struct dentry {int dummy; } ;
typedef int loff_t ;


 int FAT_FID_SIZE_WITH_PARENT ;

 struct inode* __fat_nfs_get_inode (struct super_block*,int ,int ,int) ;
 struct dentry* d_obtain_alias (struct inode*) ;

__attribute__((used)) static struct dentry *fat_fh_to_parent_nostale(struct super_block *sb,
            struct fid *fh, int fh_len,
            int fh_type)
{
 struct inode *inode = ((void*)0);
 struct fat_fid *fid = (struct fat_fid *)fh;
 loff_t i_pos;

 if (fh_len < FAT_FID_SIZE_WITH_PARENT)
  return ((void*)0);

 switch (fh_type) {
 case 128:
  i_pos = fid->parent_i_pos_hi;
  i_pos = (i_pos << 32) | (fid->parent_i_pos_low);
  inode = __fat_nfs_get_inode(sb, 0, fid->parent_i_gen, i_pos);
  break;
 }

 return d_obtain_alias(inode);
}
