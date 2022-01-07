
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sum_mgr {int mgr_lock; int mgr; TYPE_1__* card; } ;
struct sum_desc {int msr; } ;
struct sum {unsigned int* idx; } ;
struct TYPE_2__ {int dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int dev_err (int ,char*) ;
 int kfree (struct sum*) ;
 struct sum* kzalloc (int,int ) ;
 int mgr_get_resource (int *,int,unsigned int*) ;
 int mgr_put_resource (int *,int,unsigned int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int sum_rsc_init (struct sum*,struct sum_desc const*,struct sum_mgr*) ;

__attribute__((used)) static int get_sum_rsc(struct sum_mgr *mgr,
         const struct sum_desc *desc,
         struct sum **rsum)
{
 int err, i;
 unsigned int idx;
 struct sum *sum;
 unsigned long flags;

 *rsum = ((void*)0);


 sum = kzalloc(sizeof(*sum), GFP_KERNEL);
 if (!sum)
  return -ENOMEM;


 err = 0;
 spin_lock_irqsave(&mgr->mgr_lock, flags);
 for (i = 0; i < desc->msr; i++) {
  err = mgr_get_resource(&mgr->mgr, 1, &idx);
  if (err)
   break;

  sum->idx[i] = idx;
 }
 spin_unlock_irqrestore(&mgr->mgr_lock, flags);
 if (err) {
  dev_err(mgr->card->dev,
   "Can't meet SUM resource request!\n");
  goto error;
 }

 err = sum_rsc_init(sum, desc, mgr);
 if (err)
  goto error;

 *rsum = sum;

 return 0;

error:
 spin_lock_irqsave(&mgr->mgr_lock, flags);
 for (i--; i >= 0; i--)
  mgr_put_resource(&mgr->mgr, 1, sum->idx[i]);

 spin_unlock_irqrestore(&mgr->mgr_lock, flags);
 kfree(sum);
 return err;
}
