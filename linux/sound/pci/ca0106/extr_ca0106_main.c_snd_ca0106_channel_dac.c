
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_ca0106_details {int spi_dac; } ;
struct snd_ca0106 {TYPE_1__* card; } ;
struct TYPE_2__ {int dev; } ;






 int dev_dbg (int ,char*,int) ;

__attribute__((used)) static int snd_ca0106_channel_dac(struct snd_ca0106 *chip,
      struct snd_ca0106_details *details,
      int channel_id)
{
 switch (channel_id) {
 case 130:
  return (details->spi_dac & 0xf000) >> (4 * 3);
 case 129:
  return (details->spi_dac & 0x0f00) >> (4 * 2);
 case 131:
  return (details->spi_dac & 0x00f0) >> (4 * 1);
 case 128:
  return (details->spi_dac & 0x000f) >> (4 * 0);
 default:
  dev_dbg(chip->card->dev, "ca0106: unknown channel_id %d\n",
      channel_id);
 }
 return 0;
}
