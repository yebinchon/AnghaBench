
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vx_core {int dummy; } ;
struct snd_vx222 {int regCDSP; scalar_t__ regCFG; } ;


 int VX_CDSP_CODEC_RESET_MASK ;
 int VX_CDSP_DSP_RESET_MASK ;
 struct snd_vx222* to_vx222 (struct vx_core*) ;

__attribute__((used)) static void vx2_reset_board(struct vx_core *_chip, int cold_reset)
{
 struct snd_vx222 *chip = to_vx222(_chip);


 chip->regCDSP = VX_CDSP_CODEC_RESET_MASK | VX_CDSP_DSP_RESET_MASK ;
 chip->regCFG = 0;
}
