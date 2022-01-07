
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct vx_pipe {int hw_ptr; int buffer_bytes; } ;
struct vx_core {int dummy; } ;
struct snd_pcm_runtime {scalar_t__ dma_area; } ;


 int VX_DMA ;
 void* inl (unsigned long) ;
 scalar_t__ snd_BUG_ON (int) ;
 unsigned long vx2_reg_addr (struct vx_core*,int ) ;
 int vx2_release_pseudo_dma (struct vx_core*) ;
 int vx2_setup_pseudo_dma (struct vx_core*,int ) ;

__attribute__((used)) static void vx2_dma_read(struct vx_core *chip, struct snd_pcm_runtime *runtime,
    struct vx_pipe *pipe, int count)
{
 int offset = pipe->hw_ptr;
 u32 *addr = (u32 *)(runtime->dma_area + offset);
 unsigned long port = vx2_reg_addr(chip, VX_DMA);

 if (snd_BUG_ON(count % 4))
  return;

 vx2_setup_pseudo_dma(chip, 0);


 if (offset + count >= pipe->buffer_bytes) {
  int length = pipe->buffer_bytes - offset;
  count -= length;
  length >>= 2;

  for (; length > 0; length--)
   *addr++ = inl(port);
  addr = (u32 *)runtime->dma_area;
  pipe->hw_ptr = 0;
 }
 pipe->hw_ptr += count;
 count >>= 2;

 for (; count > 0; count--)
  *addr++ = inl(port);

 vx2_release_pseudo_dma(chip);
}
