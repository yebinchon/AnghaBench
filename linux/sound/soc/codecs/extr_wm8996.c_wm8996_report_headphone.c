
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dev; } ;


 int WM8996_MICD_BIAS_STARTTIME_MASK ;
 int WM8996_MICD_BIAS_STARTTIME_SHIFT ;
 int WM8996_MICD_RATE_MASK ;
 int WM8996_MICD_RATE_SHIFT ;
 int WM8996_MIC_DETECT_1 ;
 int dev_dbg (int ,char*) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int,int) ;
 int wm8996_hpdet_start (struct snd_soc_component*) ;

__attribute__((used)) static void wm8996_report_headphone(struct snd_soc_component *component)
{
 dev_dbg(component->dev, "Headphone detected\n");
 wm8996_hpdet_start(component);


 snd_soc_component_update_bits(component, WM8996_MIC_DETECT_1,
       WM8996_MICD_RATE_MASK |
       WM8996_MICD_BIAS_STARTTIME_MASK,
       7 << WM8996_MICD_RATE_SHIFT |
       7 << WM8996_MICD_BIAS_STARTTIME_SHIFT);
}
