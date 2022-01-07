
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int * xfs_failaddr_t ;
struct xfs_mount {TYPE_2__* m_attr_geo; TYPE_1__* m_dir_geo; } ;
struct xfs_dir_ops {int (* node_hdr_from_disk ) (struct xfs_da3_icnode_hdr*,struct xfs_da_intnode*) ;} ;
struct xfs_da_intnode {int dummy; } ;
struct xfs_da3_icnode_hdr {scalar_t__ level; scalar_t__ count; } ;
struct xfs_buf {struct xfs_da_intnode* b_addr; struct xfs_mount* b_mount; } ;
struct TYPE_4__ {scalar_t__ node_ents; } ;
struct TYPE_3__ {scalar_t__ node_ents; } ;


 scalar_t__ XFS_DA_NODE_MAXDEPTH ;
 int * __this_address ;
 int stub1 (struct xfs_da3_icnode_hdr*,struct xfs_da_intnode*) ;
 int * xfs_da3_blkinfo_verify (struct xfs_buf*,struct xfs_da_intnode*) ;
 struct xfs_dir_ops* xfs_dir_get_ops (struct xfs_mount*,int *) ;

__attribute__((used)) static xfs_failaddr_t
xfs_da3_node_verify(
 struct xfs_buf *bp)
{
 struct xfs_mount *mp = bp->b_mount;
 struct xfs_da_intnode *hdr = bp->b_addr;
 struct xfs_da3_icnode_hdr ichdr;
 const struct xfs_dir_ops *ops;
 xfs_failaddr_t fa;

 ops = xfs_dir_get_ops(mp, ((void*)0));

 ops->node_hdr_from_disk(&ichdr, hdr);

 fa = xfs_da3_blkinfo_verify(bp, bp->b_addr);
 if (fa)
  return fa;

 if (ichdr.level == 0)
  return __this_address;
 if (ichdr.level > XFS_DA_NODE_MAXDEPTH)
  return __this_address;
 if (ichdr.count == 0)
  return __this_address;





 if (ichdr.count > mp->m_dir_geo->node_ents &&
     ichdr.count > mp->m_attr_geo->node_ents)
  return __this_address;



 return ((void*)0);
}
