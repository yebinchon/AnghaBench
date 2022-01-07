
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dummy; } ;


 int RT5665_4BTN_IL_CMD_1 ;
 int snd_soc_component_read32 (struct snd_soc_component*,int ) ;
 int snd_soc_component_write (struct snd_soc_component*,int ,int) ;

__attribute__((used)) static int rt5665_button_detect(struct snd_soc_component *component)
{
 int btn_type, val;

 val = snd_soc_component_read32(component, RT5665_4BTN_IL_CMD_1);
 btn_type = val & 0xfff0;
 snd_soc_component_write(component, RT5665_4BTN_IL_CMD_1, val);

 return btn_type;
}
