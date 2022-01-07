
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct snd_soc_component {int dummy; } ;
typedef enum snd_soc_bias_level { ____Placeholder_snd_soc_bias_level } snd_soc_bias_level ;






 int WM8900_REG_ADDCTL ;
 int WM8900_REG_ADDCTL_BIAS_SRC ;
 int WM8900_REG_ADDCTL_TEMP_SD ;
 int WM8900_REG_ADDCTL_VMID_SOFTST ;
 int WM8900_REG_GPIO ;
 int WM8900_REG_GPIO_TEMP_ENA ;
 int WM8900_REG_HPCTL1 ;
 int WM8900_REG_POWER1 ;
 int WM8900_REG_POWER1_BIAS_ENA ;
 int WM8900_REG_POWER1_FLL_ENA ;
 int WM8900_REG_POWER1_STARTUP_BIAS_ENA ;
 int WM8900_REG_POWER2 ;
 int WM8900_REG_POWER2_SYSCLK_ENA ;
 int WM8900_REG_POWER3 ;
 int msecs_to_jiffies (int) ;
 int schedule_timeout_interruptible (int ) ;
 int snd_soc_component_get_bias_level (struct snd_soc_component*) ;
 int snd_soc_component_read32 (struct snd_soc_component*,int ) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int ,int ) ;
 int snd_soc_component_write (struct snd_soc_component*,int ,int) ;

__attribute__((used)) static int wm8900_set_bias_level(struct snd_soc_component *component,
     enum snd_soc_bias_level level)
{
 u16 reg;

 switch (level) {
 case 130:

  snd_soc_component_update_bits(component, WM8900_REG_GPIO,
        WM8900_REG_GPIO_TEMP_ENA,
        WM8900_REG_GPIO_TEMP_ENA);
  snd_soc_component_update_bits(component, WM8900_REG_ADDCTL,
        WM8900_REG_ADDCTL_TEMP_SD,
        WM8900_REG_ADDCTL_TEMP_SD);
  break;

 case 129:
  break;

 case 128:

  if (snd_soc_component_get_bias_level(component) == 131) {

   snd_soc_component_write(component, WM8900_REG_POWER1,
         WM8900_REG_POWER1_STARTUP_BIAS_ENA);


   snd_soc_component_write(component, WM8900_REG_ADDCTL,
         WM8900_REG_ADDCTL_BIAS_SRC |
         WM8900_REG_ADDCTL_VMID_SOFTST);


   snd_soc_component_write(component, WM8900_REG_POWER1,
         WM8900_REG_POWER1_STARTUP_BIAS_ENA | 0x1);


   schedule_timeout_interruptible(msecs_to_jiffies(400));


   snd_soc_component_write(component, WM8900_REG_POWER1,
         WM8900_REG_POWER1_STARTUP_BIAS_ENA |
         WM8900_REG_POWER1_BIAS_ENA | 0x1);

   snd_soc_component_write(component, WM8900_REG_ADDCTL, 0);

   snd_soc_component_write(component, WM8900_REG_POWER1,
         WM8900_REG_POWER1_BIAS_ENA | 0x1);
  }

  reg = snd_soc_component_read32(component, WM8900_REG_POWER1);
  snd_soc_component_write(component, WM8900_REG_POWER1,
        (reg & WM8900_REG_POWER1_FLL_ENA) |
        WM8900_REG_POWER1_BIAS_ENA | 0x1);
  snd_soc_component_write(component, WM8900_REG_POWER2,
        WM8900_REG_POWER2_SYSCLK_ENA);
  snd_soc_component_write(component, WM8900_REG_POWER3, 0);
  break;

 case 131:

  reg = snd_soc_component_read32(component, WM8900_REG_POWER1);
  snd_soc_component_write(component, WM8900_REG_POWER1,
        reg & WM8900_REG_POWER1_STARTUP_BIAS_ENA);
  snd_soc_component_write(component, WM8900_REG_ADDCTL,
        WM8900_REG_ADDCTL_BIAS_SRC |
        WM8900_REG_ADDCTL_VMID_SOFTST);


  snd_soc_component_write(component, WM8900_REG_POWER1,
        WM8900_REG_POWER1_STARTUP_BIAS_ENA);
  schedule_timeout_interruptible(msecs_to_jiffies(500));


  snd_soc_component_write(component, WM8900_REG_HPCTL1, 0);


  snd_soc_component_write(component, WM8900_REG_ADDCTL, 0);
  snd_soc_component_write(component, WM8900_REG_POWER1, 0);
  snd_soc_component_write(component, WM8900_REG_POWER2, 0);
  snd_soc_component_write(component, WM8900_REG_POWER3, 0);




  schedule_timeout_interruptible(msecs_to_jiffies(1));
  snd_soc_component_write(component, WM8900_REG_POWER2,
        WM8900_REG_POWER2_SYSCLK_ENA);
  break;
 }
 return 0;
}
