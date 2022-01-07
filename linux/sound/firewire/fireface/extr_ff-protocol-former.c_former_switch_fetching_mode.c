
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_ff {int unit; TYPE_1__* spec; } ;
typedef int __le32 ;
struct TYPE_2__ {int * pcm_playback_channels; } ;


 int ENOMEM ;
 int FORMER_REG_FETCH_PCM_FRAMES ;
 int GFP_KERNEL ;
 int SND_FF_STREAM_MODE_COUNT ;
 int TCODE_WRITE_BLOCK_REQUEST ;
 int cpu_to_le32 (int) ;
 int * kcalloc (unsigned int,int,int ) ;
 int kfree (int *) ;
 unsigned int max (unsigned int,int ) ;
 int snd_fw_transaction (int ,int ,int ,int *,int,int ) ;

__attribute__((used)) static int former_switch_fetching_mode(struct snd_ff *ff, bool enable)
{
 unsigned int count;
 __le32 *reg;
 int i;
 int err;

 count = 0;
 for (i = 0; i < SND_FF_STREAM_MODE_COUNT; ++i)
  count = max(count, ff->spec->pcm_playback_channels[i]);

 reg = kcalloc(count, sizeof(__le32), GFP_KERNEL);
 if (!reg)
  return -ENOMEM;

 if (!enable) {







  for (i = 0; i < count; ++i)
   reg[i] = cpu_to_le32(0x00000001);
 }

 err = snd_fw_transaction(ff->unit, TCODE_WRITE_BLOCK_REQUEST,
     FORMER_REG_FETCH_PCM_FRAMES, reg,
     sizeof(__le32) * count, 0);
 kfree(reg);
 return err;
}
