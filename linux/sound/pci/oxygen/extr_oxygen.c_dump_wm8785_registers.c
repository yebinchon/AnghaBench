
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_info_buffer {int dummy; } ;
struct oxygen {struct generic_data* model_data; } ;
struct generic_data {int * wm8785_regs; } ;


 int snd_iprintf (struct snd_info_buffer*,char*,...) ;

__attribute__((used)) static void dump_wm8785_registers(struct oxygen *chip,
      struct snd_info_buffer *buffer)
{
 struct generic_data *data = chip->model_data;
 unsigned int i;

 snd_iprintf(buffer, "\nWM8785:");
 for (i = 0; i < 3; ++i)
  snd_iprintf(buffer, " %03x", data->wm8785_regs[i]);
 snd_iprintf(buffer, "\n");
}
