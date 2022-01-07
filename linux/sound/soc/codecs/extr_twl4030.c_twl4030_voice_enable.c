
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct snd_soc_component {int dummy; } ;


 int SNDRV_PCM_STREAM_PLAYBACK ;
 int TWL4030_ARXL1_VRX_EN ;
 int TWL4030_ATXL2_VTXL_EN ;
 int TWL4030_ATXR2_VTXR_EN ;
 int TWL4030_REG_OPTION ;
 int twl4030_read (struct snd_soc_component*,int ) ;
 int twl4030_write (struct snd_soc_component*,int ,int) ;

__attribute__((used)) static void twl4030_voice_enable(struct snd_soc_component *component, int direction,
     int enable)
{
 u8 reg, mask;

 reg = twl4030_read(component, TWL4030_REG_OPTION);

 if (direction == SNDRV_PCM_STREAM_PLAYBACK)
  mask = TWL4030_ARXL1_VRX_EN;
 else
  mask = TWL4030_ATXL2_VTXL_EN | TWL4030_ATXR2_VTXR_EN;

 if (enable)
  reg |= mask;
 else
  reg &= ~mask;

 twl4030_write(component, TWL4030_REG_OPTION, reg);
}
