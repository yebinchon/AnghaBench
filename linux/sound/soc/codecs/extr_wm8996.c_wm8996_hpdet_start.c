
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dapm_context {int dummy; } ;
struct snd_soc_component {int dummy; } ;


 int WM8996_ACCESSORY_DETECT_MODE_1 ;
 int WM8996_ANALOGUE_HP_1 ;
 int WM8996_HEADPHONE_DETECT_1 ;
 int WM8996_HPOUT1L_RMV_SHORT ;
 int WM8996_HPOUT1R_RMV_SHORT ;
 int WM8996_HP_POLL ;
 int WM8996_JD_MODE_MASK ;
 int WM8996_MICD_ENA ;
 int WM8996_MIC_DETECT_1 ;
 struct snd_soc_dapm_context* snd_soc_component_get_dapm (struct snd_soc_component*) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int,int) ;
 int snd_soc_dapm_force_enable_pin (struct snd_soc_dapm_context*,char*) ;
 int snd_soc_dapm_sync (struct snd_soc_dapm_context*) ;

__attribute__((used)) static void wm8996_hpdet_start(struct snd_soc_component *component)
{
 struct snd_soc_dapm_context *dapm = snd_soc_component_get_dapm(component);


 snd_soc_component_update_bits(component, WM8996_ANALOGUE_HP_1,
       WM8996_HPOUT1L_RMV_SHORT |
       WM8996_HPOUT1R_RMV_SHORT,
       WM8996_HPOUT1L_RMV_SHORT |
       WM8996_HPOUT1R_RMV_SHORT);


 snd_soc_dapm_force_enable_pin(dapm, "Bandgap");
 snd_soc_dapm_sync(dapm);


 snd_soc_component_update_bits(component, WM8996_MIC_DETECT_1, WM8996_MICD_ENA, 0);
 snd_soc_component_update_bits(component, WM8996_ACCESSORY_DETECT_MODE_1,
       WM8996_JD_MODE_MASK, 1);


 snd_soc_component_update_bits(component, WM8996_HEADPHONE_DETECT_1,
       WM8996_HP_POLL, WM8996_HP_POLL);
}
