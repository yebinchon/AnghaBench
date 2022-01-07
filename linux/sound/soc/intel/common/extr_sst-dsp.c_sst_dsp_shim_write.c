
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {int shim; } ;
struct sst_dsp {int spinlock; TYPE_2__ addr; TYPE_1__* ops; } ;
struct TYPE_3__ {int (* write ) (int ,int ,int ) ;} ;


 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (int ,int ,int ) ;

void sst_dsp_shim_write(struct sst_dsp *sst, u32 offset, u32 value)
{
 unsigned long flags;

 spin_lock_irqsave(&sst->spinlock, flags);
 sst->ops->write(sst->addr.shim, offset, value);
 spin_unlock_irqrestore(&sst->spinlock, flags);
}
