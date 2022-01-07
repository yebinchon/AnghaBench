
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vxfs_sb_info {struct vxfs_sb* vsi_raw; } ;
struct vxfs_sb {int vs_ifree; int vs_free; int vs_dsize; } ;
struct kstatfs {int f_namelen; void* f_ffree; scalar_t__ f_files; scalar_t__ f_bavail; void* f_bfree; void* f_blocks; int f_bsize; int f_type; } ;
struct dentry {TYPE_1__* d_sb; } ;
struct TYPE_2__ {int s_blocksize; } ;


 int VXFS_NAMELEN ;
 struct vxfs_sb_info* VXFS_SBI (TYPE_1__*) ;
 int VXFS_SUPER_MAGIC ;
 void* fs32_to_cpu (struct vxfs_sb_info*,int ) ;

__attribute__((used)) static int
vxfs_statfs(struct dentry *dentry, struct kstatfs *bufp)
{
 struct vxfs_sb_info *infp = VXFS_SBI(dentry->d_sb);
 struct vxfs_sb *raw_sb = infp->vsi_raw;

 bufp->f_type = VXFS_SUPER_MAGIC;
 bufp->f_bsize = dentry->d_sb->s_blocksize;
 bufp->f_blocks = fs32_to_cpu(infp, raw_sb->vs_dsize);
 bufp->f_bfree = fs32_to_cpu(infp, raw_sb->vs_free);
 bufp->f_bavail = 0;
 bufp->f_files = 0;
 bufp->f_ffree = fs32_to_cpu(infp, raw_sb->vs_ifree);
 bufp->f_namelen = VXFS_NAMELEN;

 return 0;
}
