
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int (* xfs_agfl_walk_fn ) (struct xfs_mount*,unsigned int,void*) ;
struct xfs_mount {int dummy; } ;
struct xfs_buf {int dummy; } ;
struct xfs_agf {scalar_t__ agf_flcount; int agf_fllast; int agf_flfirst; } ;
typedef int __be32 ;


 int * XFS_BUF_TO_AGFL_BNO (struct xfs_mount*,struct xfs_buf*) ;
 unsigned int be32_to_cpu (int ) ;
 scalar_t__ cpu_to_be32 (int ) ;
 unsigned int xfs_agfl_size (struct xfs_mount*) ;

int
xfs_agfl_walk(
 struct xfs_mount *mp,
 struct xfs_agf *agf,
 struct xfs_buf *agflbp,
 xfs_agfl_walk_fn walk_fn,
 void *priv)
{
 __be32 *agfl_bno;
 unsigned int i;
 int error;

 agfl_bno = XFS_BUF_TO_AGFL_BNO(mp, agflbp);
 i = be32_to_cpu(agf->agf_flfirst);


 if (agf->agf_flcount == cpu_to_be32(0))
  return 0;


 for (;;) {
  error = walk_fn(mp, be32_to_cpu(agfl_bno[i]), priv);
  if (error)
   return error;
  if (i == be32_to_cpu(agf->agf_fllast))
   break;
  if (++i == xfs_agfl_size(mp))
   i = 0;
 }

 return 0;
}
