
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct p9_fid {struct p9_fid* rdir; int fid; struct p9_client* clnt; } ;
struct p9_client {int lock; int fids; } ;


 int P9_DEBUG_FID ;
 int idr_remove (int *,int ) ;
 int kfree (struct p9_fid*) ;
 int p9_debug (int ,char*,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void p9_fid_destroy(struct p9_fid *fid)
{
 struct p9_client *clnt;
 unsigned long flags;

 p9_debug(P9_DEBUG_FID, "fid %d\n", fid->fid);
 clnt = fid->clnt;
 spin_lock_irqsave(&clnt->lock, flags);
 idr_remove(&clnt->fids, fid->fid);
 spin_unlock_irqrestore(&clnt->lock, flags);
 kfree(fid->rdir);
 kfree(fid);
}
