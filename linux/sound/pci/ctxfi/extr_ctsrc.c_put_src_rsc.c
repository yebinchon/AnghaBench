
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct src_mgr {int mgr_lock; int mgr; } ;
struct TYPE_6__ {TYPE_1__* ops; } ;
struct src {scalar_t__ mode; int multi; TYPE_2__ rsc; } ;
struct TYPE_5__ {int (* index ) (TYPE_2__*) ;int (* master ) (TYPE_2__*) ;} ;


 scalar_t__ MEMRD ;
 int kfree (struct src*) ;
 int mgr_put_resource (int *,int,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int src_rsc_uninit (struct src*,struct src_mgr*) ;
 int stub1 (TYPE_2__*) ;
 int stub2 (TYPE_2__*) ;
 int stub3 (TYPE_2__*) ;

__attribute__((used)) static int put_src_rsc(struct src_mgr *mgr, struct src *src)
{
 unsigned long flags;

 spin_lock_irqsave(&mgr->mgr_lock, flags);
 src->rsc.ops->master(&src->rsc);
 if (MEMRD == src->mode)
  mgr_put_resource(&mgr->mgr, src->multi,
     src->rsc.ops->index(&src->rsc));
 else
  mgr_put_resource(&mgr->mgr, 1, src->rsc.ops->index(&src->rsc));

 spin_unlock_irqrestore(&mgr->mgr_lock, flags);
 src_rsc_uninit(src, mgr);
 kfree(src);

 return 0;
}
