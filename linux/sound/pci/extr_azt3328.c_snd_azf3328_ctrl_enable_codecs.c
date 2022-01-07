
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_azf3328 {TYPE_1__* card; } ;
struct TYPE_2__ {int dev; } ;


 int IO_6A_PAUSE_PLAYBACK_BIT8 ;
 int dev_dbg (int ,char*,int) ;
 int snd_azf3328_ctrl_reg_6AH_update (struct snd_azf3328*,int ,int) ;

__attribute__((used)) static inline void
snd_azf3328_ctrl_enable_codecs(struct snd_azf3328 *chip, bool enable)
{
 dev_dbg(chip->card->dev, "codec_enable %d\n", enable);


 snd_azf3328_ctrl_reg_6AH_update(
  chip, IO_6A_PAUSE_PLAYBACK_BIT8, enable
 );
}
