
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ac97 {int dummy; } ;
struct ep93xx_ac97_info {int lock; int dev; int done; } ;


 int AC97IM ;
 int AC97S1DATA ;
 int AC97S2DATA ;
 unsigned short AC97_SLOT2TXCOMPLETE ;
 int AC97_TIMEOUT ;
 int dev_warn (int ,char*,unsigned short) ;
 struct ep93xx_ac97_info* ep93xx_ac97_info ;
 int ep93xx_ac97_write_reg (struct ep93xx_ac97_info*,int ,unsigned short) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int wait_for_completion_timeout (int *,int ) ;

__attribute__((used)) static void ep93xx_ac97_write(struct snd_ac97 *ac97,
         unsigned short reg,
         unsigned short val)
{
 struct ep93xx_ac97_info *info = ep93xx_ac97_info;

 mutex_lock(&info->lock);





 ep93xx_ac97_write_reg(info, AC97S2DATA, val);
 ep93xx_ac97_write_reg(info, AC97S1DATA, reg);

 ep93xx_ac97_write_reg(info, AC97IM, AC97_SLOT2TXCOMPLETE);
 if (!wait_for_completion_timeout(&info->done, AC97_TIMEOUT))
  dev_warn(info->dev, "timeout writing register %x\n", reg);

 mutex_unlock(&info->lock);
}
