
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dummy; } ;


 int CTRL0_I2S_BLK_CAP_INV ;
 int CTRL0_SPDIF_CLK_CAP_INV ;
 int TOHDMITX_CTRL0 ;
 int snd_soc_component_write (struct snd_soc_component*,int ,int) ;

__attribute__((used)) static int g12a_tohdmi_component_probe(struct snd_soc_component *c)
{

 return snd_soc_component_write(c, TOHDMITX_CTRL0,
       CTRL0_I2S_BLK_CAP_INV | CTRL0_SPDIF_CLK_CAP_INV);
}
