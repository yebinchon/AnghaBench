
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct srcimp_mgr {int mgr_lock; int mgr; } ;
struct TYPE_2__ {int msr; } ;
struct srcimp {int * idx; TYPE_1__ rsc; } ;


 int kfree (struct srcimp*) ;
 int mgr_put_resource (int *,int,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int srcimp_rsc_uninit (struct srcimp*) ;

__attribute__((used)) static int put_srcimp_rsc(struct srcimp_mgr *mgr, struct srcimp *srcimp)
{
 unsigned long flags;
 int i;

 spin_lock_irqsave(&mgr->mgr_lock, flags);
 for (i = 0; i < srcimp->rsc.msr; i++)
  mgr_put_resource(&mgr->mgr, 1, srcimp->idx[i]);

 spin_unlock_irqrestore(&mgr->mgr_lock, flags);
 srcimp_rsc_uninit(srcimp);
 kfree(srcimp);

 return 0;
}
