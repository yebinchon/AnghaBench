
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct sst_mem_block {int size; scalar_t__ offset; struct sst_dsp* dsp; } ;
struct TYPE_2__ {scalar_t__ lpe; } ;
struct sst_dsp {TYPE_1__ addr; } ;


 int memcpy_fromio (int *,scalar_t__,int) ;

__attribute__((used)) static void sst_mem_block_dummy_read(struct sst_mem_block *block)
{
 u32 size;
 u8 tmp_buf[4];
 struct sst_dsp *sst = block->dsp;

 size = block->size > 4 ? 4 : block->size;
 memcpy_fromio(tmp_buf, sst->addr.lpe + block->offset, size);
}
