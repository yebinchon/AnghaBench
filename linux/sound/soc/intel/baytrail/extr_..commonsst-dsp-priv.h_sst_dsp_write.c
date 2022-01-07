
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_4__ {scalar_t__ lpe; } ;
struct sst_dsp {TYPE_2__ addr; TYPE_1__* ops; } ;
struct TYPE_3__ {int (* ram_write ) (struct sst_dsp*,scalar_t__,void*,size_t) ;} ;


 int stub1 (struct sst_dsp*,scalar_t__,void*,size_t) ;

__attribute__((used)) static inline void sst_dsp_write(struct sst_dsp *sst, void *src,
 u32 dest_offset, size_t bytes)
{
 sst->ops->ram_write(sst, sst->addr.lpe + dest_offset, src, bytes);
}
