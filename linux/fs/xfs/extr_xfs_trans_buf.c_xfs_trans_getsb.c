
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int xfs_trans_t ;
struct TYPE_5__ {struct xfs_buf_log_item* b_log_item; int * b_transp; } ;
typedef TYPE_1__ xfs_buf_t ;
struct xfs_mount {TYPE_1__* m_sb_bp; } ;
struct xfs_buf_log_item {int bli_recur; int bli_refcount; } ;


 int ASSERT (int) ;
 int _xfs_trans_bjoin (int *,TYPE_1__*,int) ;
 scalar_t__ atomic_read (int *) ;
 int trace_xfs_trans_getsb (struct xfs_buf_log_item*) ;
 int trace_xfs_trans_getsb_recur (struct xfs_buf_log_item*) ;
 TYPE_1__* xfs_getsb (struct xfs_mount*) ;

xfs_buf_t *
xfs_trans_getsb(
 xfs_trans_t *tp,
 struct xfs_mount *mp)
{
 xfs_buf_t *bp;
 struct xfs_buf_log_item *bip;





 if (tp == ((void*)0))
  return xfs_getsb(mp);







 bp = mp->m_sb_bp;
 if (bp->b_transp == tp) {
  bip = bp->b_log_item;
  ASSERT(bip != ((void*)0));
  ASSERT(atomic_read(&bip->bli_refcount) > 0);
  bip->bli_recur++;
  trace_xfs_trans_getsb_recur(bip);
  return bp;
 }

 bp = xfs_getsb(mp);
 if (bp == ((void*)0))
  return ((void*)0);

 _xfs_trans_bjoin(tp, bp, 1);
 trace_xfs_trans_getsb(bp->b_log_item);
 return bp;
}
