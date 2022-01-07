
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int stackptr; } ;
struct sof_ipc_dsp_oops_xtensa {TYPE_1__ plat_hdr; } ;
struct snd_sof_dev {int dev; } ;
typedef int buf ;


 int dev_err (int ,char*,int,...) ;
 int hex_dump_to_buffer (int*,int,int,int,unsigned char*,int,int) ;

__attribute__((used)) static void xtensa_stack(struct snd_sof_dev *sdev, void *oops, u32 *stack,
    u32 stack_words)
{
 struct sof_ipc_dsp_oops_xtensa *xoops = oops;
 u32 stack_ptr = xoops->plat_hdr.stackptr;

 unsigned char buf[4 * 8 + 3 + 1];
 int i;

 dev_err(sdev->dev, "stack dump from 0x%8.8x\n", stack_ptr);





 for (i = 0; i < stack_words; i += 4) {
  hex_dump_to_buffer(stack + i * 4, 16, 16, 4,
       buf, sizeof(buf), 0);
  dev_err(sdev->dev, "0x%08x: %s\n", stack_ptr + i, buf);
 }
}
