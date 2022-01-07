
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct srcimp_mgr {int mgr_lock; int mgr; TYPE_1__* card; } ;
struct srcimp_desc {int msr; } ;
struct srcimp {unsigned int* idx; } ;
struct TYPE_2__ {int dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int dev_err (int ,char*) ;
 int kfree (struct srcimp*) ;
 struct srcimp* kzalloc (int,int ) ;
 int mgr_get_resource (int *,int,unsigned int*) ;
 int mgr_put_resource (int *,int,unsigned int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int srcimp_rsc_init (struct srcimp*,struct srcimp_desc const*,struct srcimp_mgr*) ;

__attribute__((used)) static int get_srcimp_rsc(struct srcimp_mgr *mgr,
     const struct srcimp_desc *desc,
     struct srcimp **rsrcimp)
{
 int err, i;
 unsigned int idx;
 struct srcimp *srcimp;
 unsigned long flags;

 *rsrcimp = ((void*)0);


 srcimp = kzalloc(sizeof(*srcimp), GFP_KERNEL);
 if (!srcimp)
  return -ENOMEM;


 err = 0;
 spin_lock_irqsave(&mgr->mgr_lock, flags);
 for (i = 0; i < desc->msr; i++) {
  err = mgr_get_resource(&mgr->mgr, 1, &idx);
  if (err)
   break;

  srcimp->idx[i] = idx;
 }
 spin_unlock_irqrestore(&mgr->mgr_lock, flags);
 if (err) {
  dev_err(mgr->card->dev,
   "Can't meet SRCIMP resource request!\n");
  goto error1;
 }

 err = srcimp_rsc_init(srcimp, desc, mgr);
 if (err)
  goto error1;

 *rsrcimp = srcimp;

 return 0;

error1:
 spin_lock_irqsave(&mgr->mgr_lock, flags);
 for (i--; i >= 0; i--)
  mgr_put_resource(&mgr->mgr, 1, srcimp->idx[i]);

 spin_unlock_irqrestore(&mgr->mgr_lock, flags);
 kfree(srcimp);
 return err;
}
