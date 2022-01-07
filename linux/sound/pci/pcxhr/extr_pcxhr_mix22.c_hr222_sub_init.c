
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pcxhr_mgr {int board_has_analog; int board_has_mic; int dsp_reset; TYPE_1__* pci; int xlx_cfg; } ;
struct TYPE_2__ {int dev; } ;


 int AKM_CLOCK_INF_55K_CMD ;
 int AKM_POWER_CONTROL_CMD ;
 int AKM_RESET_OFF_CMD ;
 int AKM_UNMUTE_CMD ;
 int PCXHR_CFG_SYNCDSP_MASK ;
 int PCXHR_DSP_RESET ;
 int PCXHR_DSP_RESET_CODEC ;
 int PCXHR_DSP_RESET_DSP ;
 int PCXHR_DSP_RESET_MUTE ;
 unsigned char PCXHR_INPB (struct pcxhr_mgr*,int ) ;
 int PCXHR_OUTPB (struct pcxhr_mgr*,int ,int) ;
 unsigned char PCXHR_STAT_MIC_CAPS ;
 int PCXHR_XLX_STATUS ;
 int dev_dbg (int *,char*,int) ;
 int hr222_config_akm (struct pcxhr_mgr*,int ) ;
 int hr222_micro_boost (struct pcxhr_mgr*,int ) ;
 int msleep (int) ;

int hr222_sub_init(struct pcxhr_mgr *mgr)
{
 unsigned char reg;

 mgr->board_has_analog = 1;
 mgr->xlx_cfg = PCXHR_CFG_SYNCDSP_MASK;

 reg = PCXHR_INPB(mgr, PCXHR_XLX_STATUS);
 if (reg & PCXHR_STAT_MIC_CAPS)
  mgr->board_has_mic = 1;
 dev_dbg(&mgr->pci->dev,
  "MIC input available = %d\n", mgr->board_has_mic);


 PCXHR_OUTPB(mgr, PCXHR_DSP_RESET,
      PCXHR_DSP_RESET_DSP);
 msleep(5);
 mgr->dsp_reset = PCXHR_DSP_RESET_DSP |
    PCXHR_DSP_RESET_MUTE |
    PCXHR_DSP_RESET_CODEC;
 PCXHR_OUTPB(mgr, PCXHR_DSP_RESET, mgr->dsp_reset);

 msleep(5);


 hr222_config_akm(mgr, AKM_POWER_CONTROL_CMD);
 hr222_config_akm(mgr, AKM_CLOCK_INF_55K_CMD);
 hr222_config_akm(mgr, AKM_UNMUTE_CMD);
 hr222_config_akm(mgr, AKM_RESET_OFF_CMD);


 hr222_micro_boost(mgr, 0);

 return 0;
}
