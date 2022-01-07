
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ac97 {int dummy; } ;
struct ep93xx_ac97_info {int lock; int dev; int done; } ;


 int AC97IM ;
 int AC97S1DATA ;
 int AC97S2DATA ;
 unsigned short AC97_SLOT2RXVALID ;
 int AC97_TIMEOUT ;
 unsigned short ETIMEDOUT ;
 int dev_warn (int ,char*,unsigned short) ;
 struct ep93xx_ac97_info* ep93xx_ac97_info ;
 scalar_t__ ep93xx_ac97_read_reg (struct ep93xx_ac97_info*,int ) ;
 int ep93xx_ac97_write_reg (struct ep93xx_ac97_info*,int ,unsigned short) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int wait_for_completion_timeout (int *,int ) ;

__attribute__((used)) static unsigned short ep93xx_ac97_read(struct snd_ac97 *ac97,
           unsigned short reg)
{
 struct ep93xx_ac97_info *info = ep93xx_ac97_info;
 unsigned short val;

 mutex_lock(&info->lock);

 ep93xx_ac97_write_reg(info, AC97S1DATA, reg);
 ep93xx_ac97_write_reg(info, AC97IM, AC97_SLOT2RXVALID);
 if (!wait_for_completion_timeout(&info->done, AC97_TIMEOUT)) {
  dev_warn(info->dev, "timeout reading register %x\n", reg);
  mutex_unlock(&info->lock);
  return -ETIMEDOUT;
 }
 val = (unsigned short)ep93xx_ac97_read_reg(info, AC97S2DATA);

 mutex_unlock(&info->lock);
 return val;
}
