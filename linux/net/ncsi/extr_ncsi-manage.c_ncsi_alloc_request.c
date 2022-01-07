
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ncsi_request {int used; unsigned int flags; } ;
struct ncsi_dev_priv {int request_id; int lock; struct ncsi_request* requests; } ;


 int ARRAY_SIZE (struct ncsi_request*) ;
 int NCSI_REQ_START_IDX ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

struct ncsi_request *ncsi_alloc_request(struct ncsi_dev_priv *ndp,
     unsigned int req_flags)
{
 struct ncsi_request *nr = ((void*)0);
 int i, limit = ARRAY_SIZE(ndp->requests);
 unsigned long flags;


 spin_lock_irqsave(&ndp->lock, flags);
 for (i = ndp->request_id; i < limit; i++) {
  if (ndp->requests[i].used)
   continue;

  nr = &ndp->requests[i];
  nr->used = 1;
  nr->flags = req_flags;
  ndp->request_id = i + 1;
  goto found;
 }


 for (i = NCSI_REQ_START_IDX; i < ndp->request_id; i++) {
  if (ndp->requests[i].used)
   continue;

  nr = &ndp->requests[i];
  nr->used = 1;
  nr->flags = req_flags;
  ndp->request_id = i + 1;
  goto found;
 }

found:
 spin_unlock_irqrestore(&ndp->lock, flags);
 return nr;
}
