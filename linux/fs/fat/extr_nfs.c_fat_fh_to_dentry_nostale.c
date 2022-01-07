
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct inode {int dummy; } ;
struct fid {int dummy; } ;
struct fat_fid {int i_pos_hi; int i_pos_low; int i_gen; } ;
struct dentry {int dummy; } ;
typedef int loff_t ;


 int FAT_FID_SIZE_WITHOUT_PARENT ;
 int FAT_FID_SIZE_WITH_PARENT ;


 struct inode* __fat_nfs_get_inode (struct super_block*,int ,int ,int) ;
 struct dentry* d_obtain_alias (struct inode*) ;

__attribute__((used)) static struct dentry *fat_fh_to_dentry_nostale(struct super_block *sb,
            struct fid *fh, int fh_len,
            int fh_type)
{
 struct inode *inode = ((void*)0);
 struct fat_fid *fid = (struct fat_fid *)fh;
 loff_t i_pos;

 switch (fh_type) {
 case 129:
  if (fh_len < FAT_FID_SIZE_WITHOUT_PARENT)
   return ((void*)0);
  break;
 case 128:
  if (fh_len < FAT_FID_SIZE_WITH_PARENT)
   return ((void*)0);
  break;
 default:
  return ((void*)0);
 }
 i_pos = fid->i_pos_hi;
 i_pos = (i_pos << 32) | (fid->i_pos_low);
 inode = __fat_nfs_get_inode(sb, 0, fid->i_gen, i_pos);

 return d_obtain_alias(inode);
}
