
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_kcontrol_new {char* name; int private_value; int put; int get; int info; int access; int iface; int member_0; } ;
struct snd_ca0106_details {int spi_dac; } ;






 int SNDRV_CTL_ELEM_ACCESS_READWRITE ;
 int SNDRV_CTL_ELEM_IFACE_MIXER ;
 int SPI_REG_SHIFT ;
 int* spi_dmute_bit ;
 int* spi_dmute_reg ;
 int spi_mute_get ;
 int spi_mute_info ;
 int spi_mute_put ;

__attribute__((used)) static struct snd_kcontrol_new
snd_ca0106_volume_spi_dac_ctl(struct snd_ca0106_details *details,
         int channel_id)
{
 struct snd_kcontrol_new spi_switch = {0};
 int reg, bit;
 int dac_id;

 spi_switch.iface = SNDRV_CTL_ELEM_IFACE_MIXER;
 spi_switch.access = SNDRV_CTL_ELEM_ACCESS_READWRITE;
 spi_switch.info = spi_mute_info;
 spi_switch.get = spi_mute_get;
 spi_switch.put = spi_mute_put;

 switch (channel_id) {
 case 130:
  spi_switch.name = "Analog Front Playback Switch";
  dac_id = (details->spi_dac & 0xf000) >> (4 * 3);
  break;
 case 129:
  spi_switch.name = "Analog Rear Playback Switch";
  dac_id = (details->spi_dac & 0x0f00) >> (4 * 2);
  break;
 case 131:
  spi_switch.name = "Analog Center/LFE Playback Switch";
  dac_id = (details->spi_dac & 0x00f0) >> (4 * 1);
  break;
 case 128:
  spi_switch.name = "Analog Side Playback Switch";
  dac_id = (details->spi_dac & 0x000f) >> (4 * 0);
  break;
 default:

  spi_switch.name = ((void*)0);
  dac_id = 0;
 }
 reg = spi_dmute_reg[dac_id];
 bit = spi_dmute_bit[dac_id];

 spi_switch.private_value = (reg << SPI_REG_SHIFT) | bit;

 return spi_switch;
}
