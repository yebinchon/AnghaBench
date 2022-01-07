
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfs_scrub {int mp; struct xchk_fscounters* buf; } ;
struct xfs_inode {int dummy; } ;
struct xchk_fscounters {int icount_max; int icount_min; } ;


 int ENOMEM ;
 struct xchk_fscounters* kmem_zalloc (int,int ) ;
 int xchk_fscount_warmup (struct xfs_scrub*) ;
 int xchk_stop_reaping (struct xfs_scrub*) ;
 int xchk_trans_alloc (struct xfs_scrub*,int ) ;
 int xfs_icount_range (int ,int *,int *) ;

int
xchk_setup_fscounters(
 struct xfs_scrub *sc,
 struct xfs_inode *ip)
{
 struct xchk_fscounters *fsc;
 int error;

 sc->buf = kmem_zalloc(sizeof(struct xchk_fscounters), 0);
 if (!sc->buf)
  return -ENOMEM;
 fsc = sc->buf;

 xfs_icount_range(sc->mp, &fsc->icount_min, &fsc->icount_max);


 error = xchk_fscount_warmup(sc);
 if (error)
  return error;






 xchk_stop_reaping(sc);

 return xchk_trans_alloc(sc, 0);
}
