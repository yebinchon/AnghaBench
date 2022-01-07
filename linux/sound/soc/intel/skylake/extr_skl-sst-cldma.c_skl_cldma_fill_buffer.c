
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int (* cl_trigger ) (struct sst_dsp*,int) ;int (* cl_setup_spb ) (struct sst_dsp*,unsigned int,int) ;} ;
struct TYPE_4__ {scalar_t__ area; } ;
struct TYPE_6__ {unsigned int dma_buffer_offset; unsigned int curr_spib_pos; unsigned int bufsize; int wait_condition; TYPE_2__ ops; TYPE_1__ dmab_data; } ;
struct sst_dsp {TYPE_3__ cl_dev; int dev; } ;


 int dev_dbg (int ,char*,unsigned int,...) ;
 int memcpy (scalar_t__,void const*,unsigned int) ;
 int skl_cldma_int_enable (struct sst_dsp*) ;
 int stub1 (struct sst_dsp*,unsigned int,int) ;
 int stub2 (struct sst_dsp*,int) ;

__attribute__((used)) static void skl_cldma_fill_buffer(struct sst_dsp *ctx, unsigned int size,
  const void *curr_pos, bool intr_enable, bool trigger)
{
 dev_dbg(ctx->dev, "Size: %x, intr_enable: %d\n", size, intr_enable);
 dev_dbg(ctx->dev, "buf_pos_index:%d, trigger:%d\n",
   ctx->cl_dev.dma_buffer_offset, trigger);
 dev_dbg(ctx->dev, "spib position: %d\n", ctx->cl_dev.curr_spib_pos);






 if (ctx->cl_dev.dma_buffer_offset + size > ctx->cl_dev.bufsize) {
  unsigned int size_b = ctx->cl_dev.bufsize -
     ctx->cl_dev.dma_buffer_offset;
  memcpy(ctx->cl_dev.dmab_data.area + ctx->cl_dev.dma_buffer_offset,
   curr_pos, size_b);
  size -= size_b;
  curr_pos += size_b;
  ctx->cl_dev.dma_buffer_offset = 0;
 }

 memcpy(ctx->cl_dev.dmab_data.area + ctx->cl_dev.dma_buffer_offset,
   curr_pos, size);

 if (ctx->cl_dev.curr_spib_pos == ctx->cl_dev.bufsize)
  ctx->cl_dev.dma_buffer_offset = 0;
 else
  ctx->cl_dev.dma_buffer_offset = ctx->cl_dev.curr_spib_pos;

 ctx->cl_dev.wait_condition = 0;

 if (intr_enable)
  skl_cldma_int_enable(ctx);

 ctx->cl_dev.ops.cl_setup_spb(ctx, ctx->cl_dev.curr_spib_pos, trigger);
 if (trigger)
  ctx->cl_dev.ops.cl_trigger(ctx, 1);
}
