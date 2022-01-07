
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct tscs42xx {int regmap; } ;
struct snd_soc_component {int dev; } ;


 unsigned int COEFF_SIZE ;
 int DACCRSTAT_MAX_TRYS ;
 int EIO ;
 int R_DACCRADDR ;
 int R_DACCRSTAT ;
 int R_DACCRWRL ;
 int dev_err (int ,char*,int) ;
 int regmap_bulk_write (int ,int ,int *,unsigned int) ;
 int regmap_write (int ,int ,unsigned int) ;
 struct tscs42xx* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_component_read32 (struct snd_soc_component*,int ) ;

__attribute__((used)) static int write_coeff_ram(struct snd_soc_component *component, u8 *coeff_ram,
 unsigned int addr, unsigned int coeff_cnt)
{
 struct tscs42xx *tscs42xx = snd_soc_component_get_drvdata(component);
 int cnt;
 int trys;
 int ret;

 for (cnt = 0; cnt < coeff_cnt; cnt++, addr++) {

  for (trys = 0; trys < DACCRSTAT_MAX_TRYS; trys++) {
   ret = snd_soc_component_read32(component, R_DACCRSTAT);
   if (ret < 0) {
    dev_err(component->dev,
     "Failed to read stat (%d)\n", ret);
    return ret;
   }
   if (!ret)
    break;
  }

  if (trys == DACCRSTAT_MAX_TRYS) {
   ret = -EIO;
   dev_err(component->dev,
    "dac coefficient write error (%d)\n", ret);
   return ret;
  }

  ret = regmap_write(tscs42xx->regmap, R_DACCRADDR, addr);
  if (ret < 0) {
   dev_err(component->dev,
    "Failed to write dac ram address (%d)\n", ret);
   return ret;
  }

  ret = regmap_bulk_write(tscs42xx->regmap, R_DACCRWRL,
   &coeff_ram[addr * COEFF_SIZE],
   COEFF_SIZE);
  if (ret < 0) {
   dev_err(component->dev,
    "Failed to write dac ram (%d)\n", ret);
   return ret;
  }
 }

 return 0;
}
