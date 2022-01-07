
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct TYPE_4__ {int shim; } ;
struct sst_dsp {TYPE_2__ addr; TYPE_1__* ops; } ;
struct TYPE_3__ {int (* read64 ) (int ,int ) ;} ;


 int stub1 (int ,int ) ;

u64 sst_dsp_shim_read64_unlocked(struct sst_dsp *sst, u32 offset)
{
 return sst->ops->read64(sst->addr.shim, offset);
}
