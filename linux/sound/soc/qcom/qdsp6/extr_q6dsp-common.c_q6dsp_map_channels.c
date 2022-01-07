
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int EINVAL ;
 int PCM_CHANNEL_FC ;
 int PCM_CHANNEL_FL ;
 int PCM_CHANNEL_FR ;
 int PCM_CHANNEL_LB ;
 int PCM_CHANNEL_LFE ;
 int PCM_CHANNEL_LS ;
 int PCM_CHANNEL_RB ;
 int PCM_CHANNEL_RS ;
 int PCM_MAX_NUM_CHANNEL ;
 int memset (int *,int ,int ) ;

int q6dsp_map_channels(u8 ch_map[PCM_MAX_NUM_CHANNEL], int ch)
{
 memset(ch_map, 0, PCM_MAX_NUM_CHANNEL);

 switch (ch) {
 case 1:
  ch_map[0] = PCM_CHANNEL_FC;
  break;
 case 2:
  ch_map[0] = PCM_CHANNEL_FL;
  ch_map[1] = PCM_CHANNEL_FR;
  break;
 case 3:
  ch_map[0] = PCM_CHANNEL_FL;
  ch_map[1] = PCM_CHANNEL_FR;
  ch_map[2] = PCM_CHANNEL_FC;
  break;
 case 4:
  ch_map[0] = PCM_CHANNEL_FL;
  ch_map[1] = PCM_CHANNEL_FR;
  ch_map[2] = PCM_CHANNEL_LS;
  ch_map[3] = PCM_CHANNEL_RS;
  break;
 case 5:
  ch_map[0] = PCM_CHANNEL_FL;
  ch_map[1] = PCM_CHANNEL_FR;
  ch_map[2] = PCM_CHANNEL_FC;
  ch_map[3] = PCM_CHANNEL_LS;
  ch_map[4] = PCM_CHANNEL_RS;
  break;
 case 6:
  ch_map[0] = PCM_CHANNEL_FL;
  ch_map[1] = PCM_CHANNEL_FR;
  ch_map[2] = PCM_CHANNEL_LFE;
  ch_map[3] = PCM_CHANNEL_FC;
  ch_map[4] = PCM_CHANNEL_LS;
  ch_map[5] = PCM_CHANNEL_RS;
  break;
 case 8:
  ch_map[0] = PCM_CHANNEL_FL;
  ch_map[1] = PCM_CHANNEL_FR;
  ch_map[2] = PCM_CHANNEL_LFE;
  ch_map[3] = PCM_CHANNEL_FC;
  ch_map[4] = PCM_CHANNEL_LS;
  ch_map[5] = PCM_CHANNEL_RS;
  ch_map[6] = PCM_CHANNEL_LB;
  ch_map[7] = PCM_CHANNEL_RB;
  break;
 default:
  return -EINVAL;
 }

 return 0;
}
