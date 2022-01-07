
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned short u32 ;
struct snd_ac97 {int dummy; } ;
struct TYPE_2__ {int regmap; } ;


 int TEGRA20_AC97_CMD ;
 unsigned short TEGRA20_AC97_CMD_BUSY ;
 unsigned short TEGRA20_AC97_CMD_CMD_ADDR_MASK ;
 unsigned short TEGRA20_AC97_CMD_CMD_ADDR_SHIFT ;
 unsigned short TEGRA20_AC97_CMD_CMD_DATA_MASK ;
 unsigned short TEGRA20_AC97_CMD_CMD_DATA_SHIFT ;
 unsigned long jiffies ;
 unsigned long msecs_to_jiffies (int) ;
 int regmap_read (int ,int ,unsigned short*) ;
 int regmap_write (int ,int ,unsigned short) ;
 int time_after (unsigned long,unsigned long) ;
 int usleep_range (int,int) ;
 TYPE_1__* workdata ;

__attribute__((used)) static void tegra20_ac97_codec_write(struct snd_ac97 *ac97_snd,
         unsigned short reg, unsigned short val)
{
 u32 readback;
 unsigned long timeout;

 regmap_write(workdata->regmap, TEGRA20_AC97_CMD,
       ((reg << TEGRA20_AC97_CMD_CMD_ADDR_SHIFT) &
        TEGRA20_AC97_CMD_CMD_ADDR_MASK) |
       ((val << TEGRA20_AC97_CMD_CMD_DATA_SHIFT) &
        TEGRA20_AC97_CMD_CMD_DATA_MASK) |
       TEGRA20_AC97_CMD_BUSY);

 timeout = jiffies + msecs_to_jiffies(100);

 do {
  regmap_read(workdata->regmap, TEGRA20_AC97_CMD, &readback);
  if (!(readback & TEGRA20_AC97_CMD_BUSY))
   break;
  usleep_range(1000, 2000);
 } while (!time_after(jiffies, timeout));
}
