
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum snd_ff_stream_mode { ____Placeholder_snd_ff_stream_mode } snd_ff_stream_mode ;
typedef enum cip_sfc { ____Placeholder_cip_sfc } cip_sfc ;
 int CIP_SFC_COUNT ;
 int EINVAL ;




int snd_ff_stream_get_multiplier_mode(enum cip_sfc sfc,
          enum snd_ff_stream_mode *mode)
{
 static const enum snd_ff_stream_mode modes[] = {
  [135] = 129,
  [134] = 129,
  [133] = 129,
  [132] = 128,
  [131] = 128,
  [137] = 130,
  [136] = 130,
 };

 if (sfc >= CIP_SFC_COUNT)
  return -EINVAL;

 *mode = modes[sfc];

 return 0;
}
