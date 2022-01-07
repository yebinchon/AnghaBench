
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uid_t ;
struct vxfs_sb_info {int dummy; } ;
struct TYPE_6__ {scalar_t__ tv_nsec; void* tv_sec; } ;
struct TYPE_5__ {scalar_t__ tv_nsec; void* tv_sec; } ;
struct TYPE_4__ {scalar_t__ tv_nsec; void* tv_sec; } ;
struct inode {void* i_generation; void* i_blocks; TYPE_3__ i_mtime; TYPE_2__ i_ctime; TYPE_1__ i_atime; int i_size; int i_mode; } ;
struct vxfs_inode_info {void* vii_gen; void* vii_blocks; void* vii_mtime; void* vii_ctime; void* vii_atime; int vii_size; void* vii_nlink; void* vii_gid; void* vii_uid; int vii_org; void* vii_rdev; void* vii_dotdot; int vii_orgtype; void* vii_cutime; void* vii_mutime; void* vii_autime; void* vii_mode; struct inode vfs_inode; } ;
struct vxfs_dinode {int vdi_org; int vdi_rdev; int vdi_dotdot; int vdi_gen; int vdi_blocks; int vdi_orgtype; int vdi_cutime; int vdi_ctime; int vdi_mutime; int vdi_mtime; int vdi_autime; int vdi_atime; int vdi_size; int vdi_gid; int vdi_uid; int vdi_nlink; int vdi_mode; } ;
typedef int gid_t ;


 scalar_t__ VXFS_ISDIR (struct vxfs_inode_info*) ;
 int VXFS_ISLNK (struct vxfs_inode_info*) ;
 int VXFS_ISREG (struct vxfs_inode_info*) ;
 void* fs32_to_cpu (struct vxfs_sb_info*,int ) ;
 int fs64_to_cpu (struct vxfs_sb_info*,int ) ;
 int i_gid_write (struct inode*,int ) ;
 int i_uid_write (struct inode*,int ) ;
 int memcpy (int *,int *,int) ;
 int set_nlink (struct inode*,void*) ;
 int vxfs_transmod (struct vxfs_inode_info*) ;

__attribute__((used)) static inline void dip2vip_cpy(struct vxfs_sb_info *sbi,
  struct vxfs_inode_info *vip, struct vxfs_dinode *dip)
{
 struct inode *inode = &vip->vfs_inode;

 vip->vii_mode = fs32_to_cpu(sbi, dip->vdi_mode);
 vip->vii_nlink = fs32_to_cpu(sbi, dip->vdi_nlink);
 vip->vii_uid = fs32_to_cpu(sbi, dip->vdi_uid);
 vip->vii_gid = fs32_to_cpu(sbi, dip->vdi_gid);
 vip->vii_size = fs64_to_cpu(sbi, dip->vdi_size);
 vip->vii_atime = fs32_to_cpu(sbi, dip->vdi_atime);
 vip->vii_autime = fs32_to_cpu(sbi, dip->vdi_autime);
 vip->vii_mtime = fs32_to_cpu(sbi, dip->vdi_mtime);
 vip->vii_mutime = fs32_to_cpu(sbi, dip->vdi_mutime);
 vip->vii_ctime = fs32_to_cpu(sbi, dip->vdi_ctime);
 vip->vii_cutime = fs32_to_cpu(sbi, dip->vdi_cutime);
 vip->vii_orgtype = dip->vdi_orgtype;

 vip->vii_blocks = fs32_to_cpu(sbi, dip->vdi_blocks);
 vip->vii_gen = fs32_to_cpu(sbi, dip->vdi_gen);

 if (VXFS_ISDIR(vip))
  vip->vii_dotdot = fs32_to_cpu(sbi, dip->vdi_dotdot);
 else if (!VXFS_ISREG(vip) && !VXFS_ISLNK(vip))
  vip->vii_rdev = fs32_to_cpu(sbi, dip->vdi_rdev);


 memcpy(&vip->vii_org, &dip->vdi_org, sizeof(vip->vii_org));

 inode->i_mode = vxfs_transmod(vip);
 i_uid_write(inode, (uid_t)vip->vii_uid);
 i_gid_write(inode, (gid_t)vip->vii_gid);

 set_nlink(inode, vip->vii_nlink);
 inode->i_size = vip->vii_size;

 inode->i_atime.tv_sec = vip->vii_atime;
 inode->i_ctime.tv_sec = vip->vii_ctime;
 inode->i_mtime.tv_sec = vip->vii_mtime;
 inode->i_atime.tv_nsec = 0;
 inode->i_ctime.tv_nsec = 0;
 inode->i_mtime.tv_nsec = 0;

 inode->i_blocks = vip->vii_blocks;
 inode->i_generation = vip->vii_gen;
}
