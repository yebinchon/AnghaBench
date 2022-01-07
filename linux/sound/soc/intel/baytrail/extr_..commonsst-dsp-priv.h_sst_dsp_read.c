
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_4__ {scalar_t__ lpe; } ;
struct sst_dsp {TYPE_2__ addr; TYPE_1__* ops; } ;
struct TYPE_3__ {int (* ram_read ) (struct sst_dsp*,void*,scalar_t__,size_t) ;} ;


 int stub1 (struct sst_dsp*,void*,scalar_t__,size_t) ;

__attribute__((used)) static inline void sst_dsp_read(struct sst_dsp *sst, void *dest,
 u32 src_offset, size_t bytes)
{
 sst->ops->ram_read(sst, dest, sst->addr.lpe + src_offset, bytes);
}
