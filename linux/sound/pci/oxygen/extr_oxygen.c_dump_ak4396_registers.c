
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_info_buffer {int dummy; } ;
struct oxygen {struct generic_data* model_data; } ;
struct generic_data {unsigned int dacs; int ** ak4396_regs; } ;


 int snd_iprintf (struct snd_info_buffer*,char*,...) ;

__attribute__((used)) static void dump_ak4396_registers(struct oxygen *chip,
      struct snd_info_buffer *buffer)
{
 struct generic_data *data = chip->model_data;
 unsigned int dac, i;

 for (dac = 0; dac < data->dacs; ++dac) {
  snd_iprintf(buffer, "\nAK4396 %u:", dac + 1);
  for (i = 0; i < 5; ++i)
   snd_iprintf(buffer, " %02x", data->ak4396_regs[dac][i]);
 }
 snd_iprintf(buffer, "\n");
}
