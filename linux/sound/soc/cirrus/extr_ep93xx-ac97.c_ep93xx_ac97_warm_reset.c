
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ac97 {int dummy; } ;
struct ep93xx_ac97_info {int lock; int dev; int done; } ;


 int AC97IM ;
 int AC97SYNC ;
 int AC97SYNC_TIMEDSYNC ;
 int AC97_CODECREADY ;
 int AC97_TIMEOUT ;
 int dev_warn (int ,char*) ;
 struct ep93xx_ac97_info* ep93xx_ac97_info ;
 int ep93xx_ac97_write_reg (struct ep93xx_ac97_info*,int ,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int wait_for_completion_timeout (int *,int ) ;

__attribute__((used)) static void ep93xx_ac97_warm_reset(struct snd_ac97 *ac97)
{
 struct ep93xx_ac97_info *info = ep93xx_ac97_info;

 mutex_lock(&info->lock);







 ep93xx_ac97_write_reg(info, AC97SYNC, AC97SYNC_TIMEDSYNC);
 ep93xx_ac97_write_reg(info, AC97IM, AC97_CODECREADY);
 if (!wait_for_completion_timeout(&info->done, AC97_TIMEOUT))
  dev_warn(info->dev, "codec warm reset timeout\n");

 mutex_unlock(&info->lock);
}
