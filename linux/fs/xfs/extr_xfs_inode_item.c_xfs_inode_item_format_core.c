
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct xfs_log_vec {int dummy; } ;
struct xfs_log_iovec {int dummy; } ;
struct xfs_log_dinode {int dummy; } ;
struct TYPE_6__ {int di_version; } ;
struct xfs_inode {TYPE_3__ i_d; TYPE_2__* i_itemp; } ;
struct TYPE_4__ {int li_lsn; } ;
struct TYPE_5__ {TYPE_1__ ili_item; } ;


 int XLOG_REG_TYPE_ICORE ;
 int xfs_inode_to_log_dinode (struct xfs_inode*,struct xfs_log_dinode*,int ) ;
 int xfs_log_dinode_size (int ) ;
 int xlog_finish_iovec (struct xfs_log_vec*,struct xfs_log_iovec*,int ) ;
 struct xfs_log_dinode* xlog_prepare_iovec (struct xfs_log_vec*,struct xfs_log_iovec**,int ) ;

__attribute__((used)) static void
xfs_inode_item_format_core(
 struct xfs_inode *ip,
 struct xfs_log_vec *lv,
 struct xfs_log_iovec **vecp)
{
 struct xfs_log_dinode *dic;

 dic = xlog_prepare_iovec(lv, vecp, XLOG_REG_TYPE_ICORE);
 xfs_inode_to_log_dinode(ip, dic, ip->i_itemp->ili_item.li_lsn);
 xlog_finish_iovec(lv, *vecp, xfs_log_dinode_size(ip->i_d.di_version));
}
