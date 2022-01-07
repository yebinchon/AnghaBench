
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct src_mgr {int mgr_lock; int mgr; TYPE_1__* card; } ;
struct src_desc {scalar_t__ mode; int multi; } ;
struct src {int dummy; } ;
struct TYPE_2__ {int dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ MEMRD ;
 unsigned int SRC_RESOURCE_NUM ;
 int dev_err (int ,char*) ;
 struct src* kcalloc (int,int,int ) ;
 int kfree (struct src*) ;
 struct src* kzalloc (int,int ) ;
 int mgr_get_resource (int *,int,unsigned int*) ;
 int mgr_put_resource (int *,int,unsigned int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int src_rsc_init (struct src*,unsigned int,struct src_desc const*,struct src_mgr*) ;

__attribute__((used)) static int
get_src_rsc(struct src_mgr *mgr, const struct src_desc *desc, struct src **rsrc)
{
 unsigned int idx = SRC_RESOURCE_NUM;
 int err;
 struct src *src;
 unsigned long flags;

 *rsrc = ((void*)0);


 spin_lock_irqsave(&mgr->mgr_lock, flags);
 if (MEMRD == desc->mode)
  err = mgr_get_resource(&mgr->mgr, desc->multi, &idx);
 else
  err = mgr_get_resource(&mgr->mgr, 1, &idx);

 spin_unlock_irqrestore(&mgr->mgr_lock, flags);
 if (err) {
  dev_err(mgr->card->dev,
   "Can't meet SRC resource request!\n");
  return err;
 }


 if (MEMRD == desc->mode)
  src = kcalloc(desc->multi, sizeof(*src), GFP_KERNEL);
 else
  src = kzalloc(sizeof(*src), GFP_KERNEL);

 if (!src) {
  err = -ENOMEM;
  goto error1;
 }

 err = src_rsc_init(src, idx, desc, mgr);
 if (err)
  goto error2;

 *rsrc = src;

 return 0;

error2:
 kfree(src);
error1:
 spin_lock_irqsave(&mgr->mgr_lock, flags);
 if (MEMRD == desc->mode)
  mgr_put_resource(&mgr->mgr, desc->multi, idx);
 else
  mgr_put_resource(&mgr->mgr, 1, idx);

 spin_unlock_irqrestore(&mgr->mgr_lock, flags);
 return err;
}
