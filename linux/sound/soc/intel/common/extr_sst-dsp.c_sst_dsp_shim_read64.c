
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct TYPE_4__ {int shim; } ;
struct sst_dsp {int spinlock; TYPE_2__ addr; TYPE_1__* ops; } ;
struct TYPE_3__ {int (* read64 ) (int ,int ) ;} ;


 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (int ,int ) ;

u64 sst_dsp_shim_read64(struct sst_dsp *sst, u32 offset)
{
 unsigned long flags;
 u64 val;

 spin_lock_irqsave(&sst->spinlock, flags);
 val = sst->ops->read64(sst->addr.shim, offset);
 spin_unlock_irqrestore(&sst->spinlock, flags);

 return val;
}
