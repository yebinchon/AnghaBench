
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ xfs_agnumber_t ;
struct xfs_trans {TYPE_2__* t_mountp; } ;
struct xfs_buf {int dummy; } ;
struct xfs_alloc_arg {scalar_t__ agno; int pag; struct xfs_buf* agbp; TYPE_2__* mp; struct xfs_trans* tp; } ;
struct TYPE_3__ {scalar_t__ sb_agcount; } ;
struct TYPE_4__ {TYPE_1__ m_sb; } ;


 int ASSERT (int ) ;
 int EFSCORRUPTED ;
 int XFS_ALLOC_FLAG_FREEING ;
 int memset (struct xfs_alloc_arg*,int ,int) ;
 int xfs_alloc_fix_freelist (struct xfs_alloc_arg*,int ) ;
 int xfs_perag_get (TYPE_2__*,scalar_t__) ;
 int xfs_perag_put (int ) ;

int
xfs_free_extent_fix_freelist(
 struct xfs_trans *tp,
 xfs_agnumber_t agno,
 struct xfs_buf **agbp)
{
 struct xfs_alloc_arg args;
 int error;

 memset(&args, 0, sizeof(struct xfs_alloc_arg));
 args.tp = tp;
 args.mp = tp->t_mountp;
 args.agno = agno;





 if (args.agno >= args.mp->m_sb.sb_agcount)
  return -EFSCORRUPTED;

 args.pag = xfs_perag_get(args.mp, args.agno);
 ASSERT(args.pag);

 error = xfs_alloc_fix_freelist(&args, XFS_ALLOC_FLAG_FREEING);
 if (error)
  goto out;

 *agbp = args.agbp;
out:
 xfs_perag_put(args.pag);
 return error;
}
