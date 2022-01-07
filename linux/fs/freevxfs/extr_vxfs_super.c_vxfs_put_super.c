
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vxfs_sb_info {int vsi_bp; int vsi_stilist; int vsi_ilist; int vsi_fship; } ;
struct super_block {int dummy; } ;


 struct vxfs_sb_info* VXFS_SBI (struct super_block*) ;
 int brelse (int ) ;
 int iput (int ) ;
 int kfree (struct vxfs_sb_info*) ;

__attribute__((used)) static void
vxfs_put_super(struct super_block *sbp)
{
 struct vxfs_sb_info *infp = VXFS_SBI(sbp);

 iput(infp->vsi_fship);
 iput(infp->vsi_ilist);
 iput(infp->vsi_stilist);

 brelse(infp->vsi_bp);
 kfree(infp);
}
