
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct snd_ac97 {int dummy; } ;
struct TYPE_2__ {int regmap; int sync_gpio; } ;


 int TEGRA20_AC97_STATUS1 ;
 int TEGRA20_AC97_STATUS1_CODEC1_RDY ;
 int gpio_direction_output (int ,int) ;
 int gpio_free (int ) ;
 int gpio_request (int ,char*) ;
 int gpio_set_value (int ,int ) ;
 unsigned long jiffies ;
 unsigned long msecs_to_jiffies (int) ;
 int regmap_read (int ,int ,int*) ;
 int time_after (unsigned long,unsigned long) ;
 int udelay (int) ;
 int usleep_range (int,int) ;
 TYPE_1__* workdata ;

__attribute__((used)) static void tegra20_ac97_codec_warm_reset(struct snd_ac97 *ac97)
{
 u32 readback;
 unsigned long timeout;






 gpio_request(workdata->sync_gpio, "codec-sync");

 gpio_direction_output(workdata->sync_gpio, 1);

 udelay(2);
 gpio_set_value(workdata->sync_gpio, 0);
 udelay(2);
 gpio_free(workdata->sync_gpio);

 timeout = jiffies + msecs_to_jiffies(100);

 do {
  regmap_read(workdata->regmap, TEGRA20_AC97_STATUS1, &readback);
  if (readback & TEGRA20_AC97_STATUS1_CODEC1_RDY)
   break;
  usleep_range(1000, 2000);
 } while (!time_after(jiffies, timeout));
}
