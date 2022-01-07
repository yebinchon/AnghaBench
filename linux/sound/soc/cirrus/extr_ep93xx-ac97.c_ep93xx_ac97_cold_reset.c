
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ac97 {int dummy; } ;
struct ep93xx_ac97_info {int lock; int dev; int done; } ;


 int AC97EOI ;
 int AC97EOI_CODECREADY ;
 int AC97EOI_WINT ;
 int AC97GCR ;
 int AC97GCR_AC97IFE ;
 int AC97IM ;
 int AC97RESET ;
 int AC97RESET_TIMEDRESET ;
 int AC97_CODECREADY ;
 int AC97_TIMEOUT ;
 int dev_warn (int ,char*) ;
 struct ep93xx_ac97_info* ep93xx_ac97_info ;
 int ep93xx_ac97_write_reg (struct ep93xx_ac97_info*,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int usleep_range (int,int) ;
 int wait_for_completion_timeout (int *,int ) ;

__attribute__((used)) static void ep93xx_ac97_cold_reset(struct snd_ac97 *ac97)
{
 struct ep93xx_ac97_info *info = ep93xx_ac97_info;

 mutex_lock(&info->lock);





 ep93xx_ac97_write_reg(info, AC97GCR, 0);
 ep93xx_ac97_write_reg(info, AC97EOI, AC97EOI_CODECREADY | AC97EOI_WINT);
 ep93xx_ac97_write_reg(info, AC97GCR, AC97GCR_AC97IFE);




 ep93xx_ac97_write_reg(info, AC97RESET, AC97RESET_TIMEDRESET);
 ep93xx_ac97_write_reg(info, AC97IM, AC97_CODECREADY);
 if (!wait_for_completion_timeout(&info->done, AC97_TIMEOUT))
  dev_warn(info->dev, "codec cold reset timeout\n");





 usleep_range(15000, 20000);

 mutex_unlock(&info->lock);
}
