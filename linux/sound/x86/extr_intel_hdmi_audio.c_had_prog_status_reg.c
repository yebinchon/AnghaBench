
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int wrd_len; int max_wrd_len; } ;
union aud_ch_status_1 {int regval; TYPE_3__ regx; } ;
struct TYPE_4__ {int lpcm_id; int clk_acc; int samp_freq; } ;
union aud_ch_status_0 {int regval; TYPE_1__ regx; } ;
struct snd_pcm_substream {TYPE_2__* runtime; } ;
struct snd_intelhad {int aes_bits; } ;
struct TYPE_5__ {int rate; int format; } ;


 int AUD_CH_STATUS_0 ;
 int AUD_CH_STATUS_1 ;







 int CH_STATUS_MAP_176KHZ ;
 int CH_STATUS_MAP_192KHZ ;
 int CH_STATUS_MAP_32KHZ ;
 int CH_STATUS_MAP_44KHZ ;
 int CH_STATUS_MAP_48KHZ ;
 int CH_STATUS_MAP_88KHZ ;
 int CH_STATUS_MAP_96KHZ ;
 int EINVAL ;
 int IEC958_AES0_NONAUDIO ;
 int IEC958_AES3_CON_CLOCK ;
 int MAX_SMPL_WIDTH_20 ;
 int MAX_SMPL_WIDTH_24 ;
 int SMPL_WIDTH_16BITS ;
 int SMPL_WIDTH_24BITS ;



 int had_write_register (struct snd_intelhad*,int ,int ) ;

__attribute__((used)) static int had_prog_status_reg(struct snd_pcm_substream *substream,
   struct snd_intelhad *intelhaddata)
{
 union aud_ch_status_0 ch_stat0 = {.regval = 0};
 union aud_ch_status_1 ch_stat1 = {.regval = 0};

 ch_stat0.regx.lpcm_id = (intelhaddata->aes_bits &
       IEC958_AES0_NONAUDIO) >> 1;
 ch_stat0.regx.clk_acc = (intelhaddata->aes_bits &
       IEC958_AES3_CON_CLOCK) >> 4;

 switch (substream->runtime->rate) {
 case 135:
  ch_stat0.regx.samp_freq = CH_STATUS_MAP_32KHZ;
  break;

 case 134:
  ch_stat0.regx.samp_freq = CH_STATUS_MAP_44KHZ;
  break;
 case 133:
  ch_stat0.regx.samp_freq = CH_STATUS_MAP_48KHZ;
  break;
 case 132:
  ch_stat0.regx.samp_freq = CH_STATUS_MAP_88KHZ;
  break;
 case 131:
  ch_stat0.regx.samp_freq = CH_STATUS_MAP_96KHZ;
  break;
 case 137:
  ch_stat0.regx.samp_freq = CH_STATUS_MAP_176KHZ;
  break;
 case 136:
  ch_stat0.regx.samp_freq = CH_STATUS_MAP_192KHZ;
  break;

 default:

  return -EINVAL;
 }

 had_write_register(intelhaddata,
      AUD_CH_STATUS_0, ch_stat0.regval);

 switch (substream->runtime->format) {
 case 130:
  ch_stat1.regx.max_wrd_len = MAX_SMPL_WIDTH_20;
  ch_stat1.regx.wrd_len = SMPL_WIDTH_16BITS;
  break;
 case 129:
 case 128:
  ch_stat1.regx.max_wrd_len = MAX_SMPL_WIDTH_24;
  ch_stat1.regx.wrd_len = SMPL_WIDTH_24BITS;
  break;
 default:
  return -EINVAL;
 }

 had_write_register(intelhaddata,
      AUD_CH_STATUS_1, ch_stat1.regval);
 return 0;
}
