
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct p9_qid {int dummy; } ;
struct p9_fid {int mode; scalar_t__ fid; int * rdir; struct p9_client* clnt; int uid; int qid; } ;
struct p9_client {int lock; int fids; } ;


 int GFP_KERNEL ;
 int GFP_NOWAIT ;
 int P9_DEBUG_FID ;
 scalar_t__ P9_NOFID ;
 int current_fsuid () ;
 int idr_alloc_u32 (int *,struct p9_fid*,scalar_t__*,scalar_t__,int ) ;
 int idr_preload (int ) ;
 int idr_preload_end () ;
 int kfree (struct p9_fid*) ;
 struct p9_fid* kmalloc (int,int ) ;
 int memset (int *,int ,int) ;
 int p9_debug (int ,char*,struct p9_client*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static struct p9_fid *p9_fid_create(struct p9_client *clnt)
{
 int ret;
 struct p9_fid *fid;

 p9_debug(P9_DEBUG_FID, "clnt %p\n", clnt);
 fid = kmalloc(sizeof(struct p9_fid), GFP_KERNEL);
 if (!fid)
  return ((void*)0);

 memset(&fid->qid, 0, sizeof(struct p9_qid));
 fid->mode = -1;
 fid->uid = current_fsuid();
 fid->clnt = clnt;
 fid->rdir = ((void*)0);
 fid->fid = 0;

 idr_preload(GFP_KERNEL);
 spin_lock_irq(&clnt->lock);
 ret = idr_alloc_u32(&clnt->fids, fid, &fid->fid, P9_NOFID - 1,
       GFP_NOWAIT);
 spin_unlock_irq(&clnt->lock);
 idr_preload_end();

 if (!ret)
  return fid;

 kfree(fid);
 return ((void*)0);
}
