
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dummy; } ;


 int DACL1_2_MONOLOPM_VOL ;
 int DACR1_2_MONOLOPM_VOL ;
 int DEFAULT_VOL ;
 int LINE2L_2_MONOLOPM_VOL ;
 int LINE2R_2_MONOLOPM_VOL ;
 int MONOLOPM_CTRL ;
 int PGAL_2_MONOLOPM_VOL ;
 int PGAR_2_MONOLOPM_VOL ;
 int ROUTE_ON ;
 int UNMUTE ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int ,int ) ;
 int snd_soc_component_write (struct snd_soc_component*,int ,int) ;

__attribute__((used)) static void aic3x_mono_init(struct snd_soc_component *component)
{

 snd_soc_component_write(component, DACL1_2_MONOLOPM_VOL, DEFAULT_VOL | ROUTE_ON);
 snd_soc_component_write(component, DACR1_2_MONOLOPM_VOL, DEFAULT_VOL | ROUTE_ON);


 snd_soc_component_update_bits(component, MONOLOPM_CTRL, UNMUTE, UNMUTE);


 snd_soc_component_write(component, PGAL_2_MONOLOPM_VOL, DEFAULT_VOL);
 snd_soc_component_write(component, PGAR_2_MONOLOPM_VOL, DEFAULT_VOL);


 snd_soc_component_write(component, LINE2L_2_MONOLOPM_VOL, DEFAULT_VOL);
 snd_soc_component_write(component, LINE2R_2_MONOLOPM_VOL, DEFAULT_VOL);
}
