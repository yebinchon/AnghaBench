
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dev; } ;
typedef enum snd_soc_bias_level { ____Placeholder_snd_soc_bias_level } snd_soc_bias_level ;






 int WM8903_ANALOGUE_SPK_OUTPUT_CONTROL_0 ;
 int WM8903_BIAS_CONTROL_0 ;
 int WM8903_BIAS_ENA ;
 int WM8903_BUFIO_ENA ;
 int WM8903_CLASS_W_0 ;
 int WM8903_CP_DYN_FREQ ;
 int WM8903_CP_DYN_V ;
 int WM8903_ISEL_MASK ;
 int WM8903_ISEL_SHIFT ;
 int WM8903_POBCTRL ;
 int WM8903_POWER_MANAGEMENT_5 ;
 int WM8903_SPKL_ENA ;
 int WM8903_SPKR_ENA ;
 int WM8903_SPK_DISCHARGE ;
 int WM8903_STARTUP_BIAS_ENA ;
 int WM8903_VMID_BUF_ENA ;
 int WM8903_VMID_CONTROL_0 ;
 int WM8903_VMID_IO_ENA ;
 int WM8903_VMID_RES_250K ;
 int WM8903_VMID_RES_50K ;
 int WM8903_VMID_RES_MASK ;
 int WM8903_VMID_SOFT_MASK ;
 int WM8903_VMID_SOFT_SHIFT ;
 int WM8903_VMID_TIE_ENA ;
 int dev_dbg (int ,char*) ;
 int msleep (int) ;
 int snd_soc_component_get_bias_level (struct snd_soc_component*) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int,int) ;

__attribute__((used)) static int wm8903_set_bias_level(struct snd_soc_component *component,
     enum snd_soc_bias_level level)
{
 switch (level) {
 case 130:
  break;

 case 129:
  snd_soc_component_update_bits(component, WM8903_VMID_CONTROL_0,
        WM8903_VMID_RES_MASK,
        WM8903_VMID_RES_50K);
  break;

 case 128:
  if (snd_soc_component_get_bias_level(component) == 131) {
   snd_soc_component_update_bits(component, WM8903_BIAS_CONTROL_0,
         WM8903_POBCTRL | WM8903_ISEL_MASK |
         WM8903_STARTUP_BIAS_ENA |
         WM8903_BIAS_ENA,
         WM8903_POBCTRL |
         (2 << WM8903_ISEL_SHIFT) |
         WM8903_STARTUP_BIAS_ENA);

   snd_soc_component_update_bits(component,
         WM8903_ANALOGUE_SPK_OUTPUT_CONTROL_0,
         WM8903_SPK_DISCHARGE,
         WM8903_SPK_DISCHARGE);

   msleep(33);

   snd_soc_component_update_bits(component, WM8903_POWER_MANAGEMENT_5,
         WM8903_SPKL_ENA | WM8903_SPKR_ENA,
         WM8903_SPKL_ENA | WM8903_SPKR_ENA);

   snd_soc_component_update_bits(component,
         WM8903_ANALOGUE_SPK_OUTPUT_CONTROL_0,
         WM8903_SPK_DISCHARGE, 0);

   snd_soc_component_update_bits(component, WM8903_VMID_CONTROL_0,
         WM8903_VMID_TIE_ENA |
         WM8903_BUFIO_ENA |
         WM8903_VMID_IO_ENA |
         WM8903_VMID_SOFT_MASK |
         WM8903_VMID_RES_MASK |
         WM8903_VMID_BUF_ENA,
         WM8903_VMID_TIE_ENA |
         WM8903_BUFIO_ENA |
         WM8903_VMID_IO_ENA |
         (2 << WM8903_VMID_SOFT_SHIFT) |
         WM8903_VMID_RES_250K |
         WM8903_VMID_BUF_ENA);

   msleep(129);

   snd_soc_component_update_bits(component, WM8903_POWER_MANAGEMENT_5,
         WM8903_SPKL_ENA | WM8903_SPKR_ENA,
         0);

   snd_soc_component_update_bits(component, WM8903_VMID_CONTROL_0,
         WM8903_VMID_SOFT_MASK, 0);

   snd_soc_component_update_bits(component, WM8903_VMID_CONTROL_0,
         WM8903_VMID_RES_MASK,
         WM8903_VMID_RES_50K);

   snd_soc_component_update_bits(component, WM8903_BIAS_CONTROL_0,
         WM8903_BIAS_ENA | WM8903_POBCTRL,
         WM8903_BIAS_ENA);




   dev_dbg(component->dev, "Enabling Class W\n");
   snd_soc_component_update_bits(component, WM8903_CLASS_W_0,
         WM8903_CP_DYN_FREQ |
         WM8903_CP_DYN_V,
         WM8903_CP_DYN_FREQ |
         WM8903_CP_DYN_V);
  }

  snd_soc_component_update_bits(component, WM8903_VMID_CONTROL_0,
        WM8903_VMID_RES_MASK,
        WM8903_VMID_RES_250K);
  break;

 case 131:
  snd_soc_component_update_bits(component, WM8903_BIAS_CONTROL_0,
        WM8903_BIAS_ENA, 0);

  snd_soc_component_update_bits(component, WM8903_VMID_CONTROL_0,
        WM8903_VMID_SOFT_MASK,
        2 << WM8903_VMID_SOFT_SHIFT);

  snd_soc_component_update_bits(component, WM8903_VMID_CONTROL_0,
        WM8903_VMID_BUF_ENA, 0);

  msleep(290);

  snd_soc_component_update_bits(component, WM8903_VMID_CONTROL_0,
        WM8903_VMID_TIE_ENA | WM8903_BUFIO_ENA |
        WM8903_VMID_IO_ENA | WM8903_VMID_RES_MASK |
        WM8903_VMID_SOFT_MASK |
        WM8903_VMID_BUF_ENA, 0);

  snd_soc_component_update_bits(component, WM8903_BIAS_CONTROL_0,
        WM8903_STARTUP_BIAS_ENA, 0);
  break;
 }

 return 0;
}
