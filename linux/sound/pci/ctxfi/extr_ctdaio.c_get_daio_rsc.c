
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct daio {int dummy; } ;
struct dao {struct daio daio; } ;
struct daio_mgr {int mgr_lock; int mgr; int (* commit_write ) (struct daio_mgr*) ;int (* daio_enable ) (struct daio_mgr*,struct daio*) ;TYPE_1__* card; } ;
struct daio_desc {scalar_t__ type; } ;
struct dai {struct daio daio; } ;
struct TYPE_2__ {int dev; } ;


 scalar_t__ DAIO_OUT_MAX ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int dai_rsc_init (struct dao*,struct daio_desc const*,struct daio_mgr*) ;
 int daio_mgr_get_rsc (int *,scalar_t__) ;
 int daio_mgr_put_rsc (int *,scalar_t__) ;
 int dao_rsc_init (struct dao*,struct daio_desc const*,struct daio_mgr*) ;
 int dev_err (int ,char*) ;
 int kfree (struct dao*) ;
 struct dao* kzalloc (int,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct daio_mgr*,struct daio*) ;
 int stub2 (struct daio_mgr*) ;

__attribute__((used)) static int get_daio_rsc(struct daio_mgr *mgr,
   const struct daio_desc *desc,
   struct daio **rdaio)
{
 int err;
 unsigned long flags;

 *rdaio = ((void*)0);


 spin_lock_irqsave(&mgr->mgr_lock, flags);
 err = daio_mgr_get_rsc(&mgr->mgr, desc->type);
 spin_unlock_irqrestore(&mgr->mgr_lock, flags);
 if (err) {
  dev_err(mgr->card->dev,
   "Can't meet DAIO resource request!\n");
  return err;
 }

 err = -ENOMEM;

 if (desc->type <= DAIO_OUT_MAX) {
  struct dao *dao = kzalloc(sizeof(*dao), GFP_KERNEL);
  if (!dao)
   goto error;

  err = dao_rsc_init(dao, desc, mgr);
  if (err) {
   kfree(dao);
   goto error;
  }

  *rdaio = &dao->daio;
 } else {
  struct dai *dai = kzalloc(sizeof(*dai), GFP_KERNEL);
  if (!dai)
   goto error;

  err = dai_rsc_init(dai, desc, mgr);
  if (err) {
   kfree(dai);
   goto error;
  }

  *rdaio = &dai->daio;
 }

 mgr->daio_enable(mgr, *rdaio);
 mgr->commit_write(mgr);

 return 0;

error:
 spin_lock_irqsave(&mgr->mgr_lock, flags);
 daio_mgr_put_rsc(&mgr->mgr, desc->type);
 spin_unlock_irqrestore(&mgr->mgr_lock, flags);
 return err;
}
