
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_sof_dev {int dummy; } ;


 int BYT_DSP_BAR ;
 int SHIM_BYT_CSR_RST ;
 int SHIM_BYT_CSR_STALL ;
 int SHIM_BYT_CSR_VECTOR_SEL ;
 int SHIM_CSR ;
 int snd_sof_dsp_update_bits64 (struct snd_sof_dev*,int ,int ,int,int) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int byt_reset(struct snd_sof_dev *sdev)
{

 snd_sof_dsp_update_bits64(sdev, BYT_DSP_BAR, SHIM_CSR,
      SHIM_BYT_CSR_RST | SHIM_BYT_CSR_VECTOR_SEL |
      SHIM_BYT_CSR_STALL,
      SHIM_BYT_CSR_RST | SHIM_BYT_CSR_VECTOR_SEL |
      SHIM_BYT_CSR_STALL);

 usleep_range(10, 15);


 snd_sof_dsp_update_bits64(sdev, BYT_DSP_BAR, SHIM_CSR,
      SHIM_BYT_CSR_RST, 0);

 return 0;
}
