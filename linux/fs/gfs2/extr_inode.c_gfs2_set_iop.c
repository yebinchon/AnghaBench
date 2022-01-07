
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int umode_t ;
struct inode {int i_rdev; int i_mode; int * i_op; int * i_fop; } ;
struct gfs2_sbd {int dummy; } ;


 struct gfs2_sbd* GFS2_SB (struct inode*) ;
 scalar_t__ S_ISDIR (int ) ;
 scalar_t__ S_ISLNK (int ) ;
 scalar_t__ S_ISREG (int ) ;
 int gfs2_dir_fops ;
 int gfs2_dir_fops_nolock ;
 int gfs2_dir_iops ;
 int gfs2_file_fops ;
 int gfs2_file_fops_nolock ;
 int gfs2_file_iops ;
 scalar_t__ gfs2_localflocks (struct gfs2_sbd*) ;
 int gfs2_symlink_iops ;
 int init_special_inode (struct inode*,int ,int ) ;

__attribute__((used)) static void gfs2_set_iop(struct inode *inode)
{
 struct gfs2_sbd *sdp = GFS2_SB(inode);
 umode_t mode = inode->i_mode;

 if (S_ISREG(mode)) {
  inode->i_op = &gfs2_file_iops;
  if (gfs2_localflocks(sdp))
   inode->i_fop = &gfs2_file_fops_nolock;
  else
   inode->i_fop = &gfs2_file_fops;
 } else if (S_ISDIR(mode)) {
  inode->i_op = &gfs2_dir_iops;
  if (gfs2_localflocks(sdp))
   inode->i_fop = &gfs2_dir_fops_nolock;
  else
   inode->i_fop = &gfs2_dir_fops;
 } else if (S_ISLNK(mode)) {
  inode->i_op = &gfs2_symlink_iops;
 } else {
  inode->i_op = &gfs2_file_iops;
  init_special_inode(inode, inode->i_mode, inode->i_rdev);
 }
}
