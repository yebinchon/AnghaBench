
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_azf3328 {TYPE_1__* card; } ;
struct TYPE_2__ {int dev; } ;


 int dev_warn (int ,char*,char const*,unsigned short) ;

__attribute__((used)) static inline void
snd_azf3328_mixer_ac97_map_unsupported(const struct snd_azf3328 *chip,
           unsigned short reg, const char *mode)
{

 dev_warn(chip->card->dev,
  "missing %s emulation for AC97 register 0x%02x!\n",
  mode, reg);
}
