
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dummy; } ;
struct aic3x_priv {int model; int ocmv; } ;



 int AIC3X_MODEL_3104 ;


 int AIC3X_PAGE_SELECT ;
 int AIC3X_RESET ;
 int CLASSD_CTRL ;
 int DACL1_2_HPLCOM_VOL ;
 int DACL1_2_HPLOUT_VOL ;
 int DACL1_2_LLOPM_VOL ;
 int DACR1_2_HPRCOM_VOL ;
 int DACR1_2_HPROUT_VOL ;
 int DACR1_2_RLOPM_VOL ;
 int DEFAULT_GAIN ;
 int DEFAULT_VOL ;
 int HPLCOM_CTRL ;
 int HPLOUT_CTRL ;
 int HPOUT_SC ;
 int HPOUT_SC_OCMV_MASK ;
 int HPOUT_SC_OCMV_SHIFT ;
 int HPRCOM_CTRL ;
 int HPROUT_CTRL ;
 int LADC_VOL ;
 int LDAC_VOL ;
 int LINE1L_2_LADC_CTRL ;
 int LINE1R_2_RADC_CTRL ;
 int LINE2L_2_HPLCOM_VOL ;
 int LINE2L_2_HPLOUT_VOL ;
 int LINE2L_2_LLOPM_VOL ;
 int LINE2R_2_HPRCOM_VOL ;
 int LINE2R_2_HPROUT_VOL ;
 int LINE2R_2_RLOPM_VOL ;
 int LLOPM_CTRL ;
 int MUTE_ON ;
 int PAGE0_SELECT ;
 int PGAL_2_HPLCOM_VOL ;
 int PGAL_2_HPLOUT_VOL ;
 int PGAL_2_LLOPM_VOL ;
 int PGAR_2_HPRCOM_VOL ;
 int PGAR_2_HPROUT_VOL ;
 int PGAR_2_RLOPM_VOL ;
 int RADC_VOL ;
 int RDAC_VOL ;
 int RLOPM_CTRL ;
 int ROUTE_ON ;
 int SOFT_RESET ;
 int UNMUTE ;
 int aic3x_mono_init (struct snd_soc_component*) ;
 struct aic3x_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int,int) ;
 int snd_soc_component_write (struct snd_soc_component*,int ,int) ;

__attribute__((used)) static int aic3x_init(struct snd_soc_component *component)
{
 struct aic3x_priv *aic3x = snd_soc_component_get_drvdata(component);

 snd_soc_component_write(component, AIC3X_PAGE_SELECT, PAGE0_SELECT);
 snd_soc_component_write(component, AIC3X_RESET, SOFT_RESET);


 snd_soc_component_write(component, LDAC_VOL, DEFAULT_VOL | MUTE_ON);
 snd_soc_component_write(component, RDAC_VOL, DEFAULT_VOL | MUTE_ON);


 snd_soc_component_write(component, DACL1_2_HPLOUT_VOL, DEFAULT_VOL | ROUTE_ON);
 snd_soc_component_write(component, DACR1_2_HPROUT_VOL, DEFAULT_VOL | ROUTE_ON);
 snd_soc_component_write(component, DACL1_2_HPLCOM_VOL, DEFAULT_VOL | ROUTE_ON);
 snd_soc_component_write(component, DACR1_2_HPRCOM_VOL, DEFAULT_VOL | ROUTE_ON);

 snd_soc_component_write(component, DACL1_2_LLOPM_VOL, DEFAULT_VOL | ROUTE_ON);
 snd_soc_component_write(component, DACR1_2_RLOPM_VOL, DEFAULT_VOL | ROUTE_ON);


 snd_soc_component_update_bits(component, LLOPM_CTRL, UNMUTE, UNMUTE);
 snd_soc_component_update_bits(component, RLOPM_CTRL, UNMUTE, UNMUTE);
 snd_soc_component_update_bits(component, HPLOUT_CTRL, UNMUTE, UNMUTE);
 snd_soc_component_update_bits(component, HPROUT_CTRL, UNMUTE, UNMUTE);
 snd_soc_component_update_bits(component, HPLCOM_CTRL, UNMUTE, UNMUTE);
 snd_soc_component_update_bits(component, HPRCOM_CTRL, UNMUTE, UNMUTE);


 snd_soc_component_write(component, LADC_VOL, DEFAULT_GAIN);
 snd_soc_component_write(component, RADC_VOL, DEFAULT_GAIN);

 snd_soc_component_write(component, LINE1L_2_LADC_CTRL, 0x0);
 snd_soc_component_write(component, LINE1R_2_RADC_CTRL, 0x0);


 snd_soc_component_write(component, PGAL_2_HPLOUT_VOL, DEFAULT_VOL);
 snd_soc_component_write(component, PGAR_2_HPROUT_VOL, DEFAULT_VOL);
 snd_soc_component_write(component, PGAL_2_HPLCOM_VOL, DEFAULT_VOL);
 snd_soc_component_write(component, PGAR_2_HPRCOM_VOL, DEFAULT_VOL);

 snd_soc_component_write(component, PGAL_2_LLOPM_VOL, DEFAULT_VOL);
 snd_soc_component_write(component, PGAR_2_RLOPM_VOL, DEFAULT_VOL);


 if (aic3x->model != AIC3X_MODEL_3104) {

  snd_soc_component_write(component, LINE2L_2_HPLOUT_VOL, DEFAULT_VOL);
  snd_soc_component_write(component, LINE2R_2_HPROUT_VOL, DEFAULT_VOL);
  snd_soc_component_write(component, LINE2L_2_HPLCOM_VOL, DEFAULT_VOL);
  snd_soc_component_write(component, LINE2R_2_HPRCOM_VOL, DEFAULT_VOL);

  snd_soc_component_write(component, LINE2L_2_LLOPM_VOL, DEFAULT_VOL);
  snd_soc_component_write(component, LINE2R_2_RLOPM_VOL, DEFAULT_VOL);
 }

 switch (aic3x->model) {
 case 128:
 case 129:
  aic3x_mono_init(component);
  break;
 case 130:
  snd_soc_component_write(component, CLASSD_CTRL, 0);
  break;
 }


 snd_soc_component_update_bits(component, HPOUT_SC, HPOUT_SC_OCMV_MASK,
       aic3x->ocmv << HPOUT_SC_OCMV_SHIFT);

 return 0;
}
