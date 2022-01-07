
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_msnd {int* left_levels; int* right_levels; scalar_t__ type; scalar_t__ SMA; } ;


 int EINVAL ;
 int HDEXAR_AUX_SET_POTS ;
 int HDEXAR_IN_SET_POTS ;
 int HDEXAR_MIC_SET_POTS ;
 int HDEX_AUX_REQ ;
 int LEVEL_ENTRIES ;







 scalar_t__ SMA_bInPotPosLeft ;
 scalar_t__ SMA_bInPotPosRight ;
 scalar_t__ SMA_bMicPotPosLeft ;
 scalar_t__ SMA_bMicPotPosRight ;
 scalar_t__ SMA_wCurrMastVolLeft ;
 scalar_t__ SMA_wCurrMastVolRight ;
 int bAuxPotPos ;
 scalar_t__ msndClassic ;
 scalar_t__ msndPinnacle ;
 int snd_msnd_send_dsp_cmd (struct snd_msnd*,int ) ;
 int snd_msnd_send_word (struct snd_msnd*,int ,int ,int ) ;
 int update_potm (int const,int ,int ) ;
 int update_volm (int const,int ) ;
 int wCurrInVol ;
 int wCurrMHdrVol ;
 int wCurrPlayVol ;
 int writeb (int,scalar_t__) ;
 int writew (int,scalar_t__) ;

__attribute__((used)) static int snd_msndmix_set(struct snd_msnd *dev, int d, int left, int right)
{
 int bLeft, bRight;
 int wLeft, wRight;
 int updatemaster = 0;

 if (d >= LEVEL_ENTRIES)
  return -EINVAL;

 bLeft = left * 0xff / 100;
 wLeft = left * 0xffff / 100;

 bRight = right * 0xff / 100;
 wRight = right * 0xffff / 100;

 dev->left_levels[d] = wLeft;
 dev->right_levels[d] = wRight;

 switch (d) {

 case 132:

  writeb(bLeft, dev->SMA + SMA_bInPotPosLeft);
  writeb(bRight, dev->SMA + SMA_bInPotPosRight);
  if (snd_msnd_send_word(dev, 0, 0, HDEXAR_IN_SET_POTS) == 0)
   snd_msnd_send_dsp_cmd(dev, HDEX_AUX_REQ);
  break;
 case 131:
  if (dev->type == msndClassic)
   return -EINVAL;

  writeb(bLeft, dev->SMA + SMA_bMicPotPosLeft);
  writeb(bRight, dev->SMA + SMA_bMicPotPosRight);
  if (snd_msnd_send_word(dev, 0, 0, HDEXAR_MIC_SET_POTS) == 0)
   snd_msnd_send_dsp_cmd(dev, HDEX_AUX_REQ);
  break;
 case 128:
  writew(wLeft, dev->SMA + SMA_wCurrMastVolLeft);
  writew(wRight, dev->SMA + SMA_wCurrMastVolRight);


 case 134:




 case 129:
 case 130:
 case 133:

  updatemaster = 1;
  break;

 default:
  return -EINVAL;
 }

 if (updatemaster) {

  update_volm(130, wCurrPlayVol);
  update_volm(133, wCurrInVol);
  if (dev->type == msndPinnacle)
   update_volm(129, wCurrMHdrVol);
  update_potm(134, bAuxPotPos, HDEXAR_AUX_SET_POTS);
 }

 return 0;
}
