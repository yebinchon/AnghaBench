
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* substream; } ;
struct azx_dev {TYPE_2__ core; } ;
struct azx {int dummy; } ;
struct TYPE_3__ {scalar_t__ stream; } ;


 scalar_t__ SNDRV_PCM_STREAM_PLAYBACK ;
 unsigned int azx_get_pos_posbuf (struct azx*,struct azx_dev*) ;
 unsigned int azx_skl_get_dpib_pos (struct azx*,struct azx_dev*) ;
 int udelay (int) ;

__attribute__((used)) static unsigned int azx_get_pos_skl(struct azx *chip, struct azx_dev *azx_dev)
{

 if (azx_dev->core.substream->stream == SNDRV_PCM_STREAM_PLAYBACK)
  return azx_skl_get_dpib_pos(chip, azx_dev);





 udelay(20);
 azx_skl_get_dpib_pos(chip, azx_dev);
 return azx_get_pos_posbuf(chip, azx_dev);
}
