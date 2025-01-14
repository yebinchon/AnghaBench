
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct snd_soc_component {int dummy; } ;


 int DA7213_ALC_AVG_ITERATIONS ;
 int DA7213_ALC_CIC_OP_LVL_CTRL ;
 int DA7213_ALC_CIC_OP_LVL_DATA ;
 int DA7213_ALC_DATA_MIDDLE ;
 int DA7213_ALC_DATA_TOP ;
 int snd_soc_component_read32 (struct snd_soc_component*,int ) ;
 int snd_soc_component_write (struct snd_soc_component*,int ,int) ;

__attribute__((used)) static int da7213_get_alc_data(struct snd_soc_component *component, u8 reg_val)
{
 int mid_data, top_data;
 int sum = 0;
 u8 iteration;

 for (iteration = 0; iteration < DA7213_ALC_AVG_ITERATIONS;
      iteration++) {

  snd_soc_component_write(component, DA7213_ALC_CIC_OP_LVL_CTRL, reg_val);


  snd_soc_component_write(component, DA7213_ALC_CIC_OP_LVL_CTRL,
         reg_val | DA7213_ALC_DATA_MIDDLE);
  mid_data = snd_soc_component_read32(component, DA7213_ALC_CIC_OP_LVL_DATA);


  snd_soc_component_write(component, DA7213_ALC_CIC_OP_LVL_CTRL,
         reg_val | DA7213_ALC_DATA_TOP);
  top_data = snd_soc_component_read32(component, DA7213_ALC_CIC_OP_LVL_DATA);

  sum += ((mid_data << 8) | (top_data << 16));
 }

 return sum / DA7213_ALC_AVG_ITERATIONS;
}
