
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef scalar_t__ u32 ;
struct ufs_sb_private_info {int s_ncg; int s_ipg; } ;
struct super_block {int dummy; } ;
struct inode {scalar_t__ i_generation; } ;
struct TYPE_2__ {struct ufs_sb_private_info* s_uspi; } ;


 struct inode* ERR_CAST (struct inode*) ;
 struct inode* ERR_PTR (int ) ;
 int ESTALE ;
 scalar_t__ IS_ERR (struct inode*) ;
 int UFS_ROOTINO ;
 TYPE_1__* UFS_SB (struct super_block*) ;
 int iput (struct inode*) ;
 struct inode* ufs_iget (struct super_block*,int) ;

__attribute__((used)) static struct inode *ufs_nfs_get_inode(struct super_block *sb, u64 ino, u32 generation)
{
 struct ufs_sb_private_info *uspi = UFS_SB(sb)->s_uspi;
 struct inode *inode;

 if (ino < UFS_ROOTINO || ino > uspi->s_ncg * uspi->s_ipg)
  return ERR_PTR(-ESTALE);

 inode = ufs_iget(sb, ino);
 if (IS_ERR(inode))
  return ERR_CAST(inode);
 if (generation && inode->i_generation != generation) {
  iput(inode);
  return ERR_PTR(-ESTALE);
 }
 return inode;
}
