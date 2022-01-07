
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int frags; int bufsize; } ;
struct sst_dsp {TYPE_1__ cl_dev; } ;
struct snd_dma_buffer {scalar_t__ area; } ;
typedef int phys_addr_t ;
typedef int __le32 ;


 int cpu_to_le32 (int) ;
 int lower_32_bits (int ) ;
 int upper_32_bits (int ) ;
 int virt_to_phys (scalar_t__) ;

__attribute__((used)) static void skl_cldma_setup_bdle(struct sst_dsp *ctx,
  struct snd_dma_buffer *dmab_data,
  __le32 **bdlp, int size, int with_ioc)
{
 __le32 *bdl = *bdlp;

 ctx->cl_dev.frags = 0;
 while (size > 0) {
  phys_addr_t addr = virt_to_phys(dmab_data->area +
    (ctx->cl_dev.frags * ctx->cl_dev.bufsize));

  bdl[0] = cpu_to_le32(lower_32_bits(addr));
  bdl[1] = cpu_to_le32(upper_32_bits(addr));

  bdl[2] = cpu_to_le32(ctx->cl_dev.bufsize);

  size -= ctx->cl_dev.bufsize;
  bdl[3] = (size || !with_ioc) ? 0 : cpu_to_le32(0x01);

  bdl += 4;
  ctx->cl_dev.frags++;
 }
}
