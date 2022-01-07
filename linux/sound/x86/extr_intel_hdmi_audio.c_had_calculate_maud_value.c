
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;



 scalar_t__ AUD_SAMPLE_RATE_176_4_DP_1_62_MAUD_VAL ;
 scalar_t__ AUD_SAMPLE_RATE_176_4_DP_2_7_MAUD_VAL ;

 scalar_t__ AUD_SAMPLE_RATE_32_DP_1_62_MAUD_VAL ;
 scalar_t__ AUD_SAMPLE_RATE_32_DP_2_7_MAUD_VAL ;

 scalar_t__ AUD_SAMPLE_RATE_44_1_DP_1_62_MAUD_VAL ;
 scalar_t__ AUD_SAMPLE_RATE_44_1_DP_2_7_MAUD_VAL ;

 scalar_t__ AUD_SAMPLE_RATE_48_DP_1_62_MAUD_VAL ;
 scalar_t__ AUD_SAMPLE_RATE_48_DP_2_7_MAUD_VAL ;

 scalar_t__ AUD_SAMPLE_RATE_88_2_DP_1_62_MAUD_VAL ;
 scalar_t__ AUD_SAMPLE_RATE_88_2_DP_2_7_MAUD_VAL ;

 scalar_t__ AUD_SAMPLE_RATE_96_DP_1_62_MAUD_VAL ;
 scalar_t__ AUD_SAMPLE_RATE_96_DP_2_7_MAUD_VAL ;
 scalar_t__ DP_1_62_GHZ ;
 scalar_t__ DP_2_7_GHZ ;
 scalar_t__ EINVAL ;

 scalar_t__ HAD_MAX_RATE_DP_1_62_MAUD_VAL ;
 scalar_t__ HAD_MAX_RATE_DP_2_7_MAUD_VAL ;

__attribute__((used)) static int had_calculate_maud_value(u32 aud_samp_freq, u32 link_rate)
{
 u32 maud_val;


 if (link_rate == DP_2_7_GHZ) {
  switch (aud_samp_freq) {
  case 133:
   maud_val = AUD_SAMPLE_RATE_32_DP_2_7_MAUD_VAL;
   break;

  case 132:
   maud_val = AUD_SAMPLE_RATE_44_1_DP_2_7_MAUD_VAL;
   break;

  case 131:
   maud_val = AUD_SAMPLE_RATE_48_DP_2_7_MAUD_VAL;
   break;

  case 130:
   maud_val = AUD_SAMPLE_RATE_88_2_DP_2_7_MAUD_VAL;
   break;

  case 129:
   maud_val = AUD_SAMPLE_RATE_96_DP_2_7_MAUD_VAL;
   break;

  case 134:
   maud_val = AUD_SAMPLE_RATE_176_4_DP_2_7_MAUD_VAL;
   break;

  case 128:
   maud_val = HAD_MAX_RATE_DP_2_7_MAUD_VAL;
   break;

  default:
   maud_val = -EINVAL;
   break;
  }
 } else if (link_rate == DP_1_62_GHZ) {
  switch (aud_samp_freq) {
  case 133:
   maud_val = AUD_SAMPLE_RATE_32_DP_1_62_MAUD_VAL;
   break;

  case 132:
   maud_val = AUD_SAMPLE_RATE_44_1_DP_1_62_MAUD_VAL;
   break;

  case 131:
   maud_val = AUD_SAMPLE_RATE_48_DP_1_62_MAUD_VAL;
   break;

  case 130:
   maud_val = AUD_SAMPLE_RATE_88_2_DP_1_62_MAUD_VAL;
   break;

  case 129:
   maud_val = AUD_SAMPLE_RATE_96_DP_1_62_MAUD_VAL;
   break;

  case 134:
   maud_val = AUD_SAMPLE_RATE_176_4_DP_1_62_MAUD_VAL;
   break;

  case 128:
   maud_val = HAD_MAX_RATE_DP_1_62_MAUD_VAL;
   break;

  default:
   maud_val = -EINVAL;
   break;
  }
 } else
  maud_val = -EINVAL;

 return maud_val;
}
