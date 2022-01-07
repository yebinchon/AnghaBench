
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xfs_inode {int d_ops; TYPE_1__* i_mount; } ;
struct xfs_dir2_data_hdr {int dummy; } ;
struct TYPE_2__ {int m_dir_geo; } ;


 void xfs_dir2_data_freescan_int (int ,int ,struct xfs_dir2_data_hdr*,int*) ;

void
xfs_dir2_data_freescan(
 struct xfs_inode *dp,
 struct xfs_dir2_data_hdr *hdr,
 int *loghead)
{
 return xfs_dir2_data_freescan_int(dp->i_mount->m_dir_geo, dp->d_ops,
   hdr, loghead);
}
