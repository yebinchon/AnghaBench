
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xonar_cs43xx {int * cs4398_regs; } ;
struct snd_info_buffer {int dummy; } ;
struct oxygen {struct xonar_cs43xx* model_data; } ;


 int dump_cs4362a_registers (struct xonar_cs43xx*,struct snd_info_buffer*) ;
 int snd_iprintf (struct snd_info_buffer*,char*,...) ;

__attribute__((used)) static void dump_d1_registers(struct oxygen *chip,
         struct snd_info_buffer *buffer)
{
 struct xonar_cs43xx *data = chip->model_data;
 unsigned int i;

 snd_iprintf(buffer, "\nCS4398: 7?");
 for (i = 2; i < 8; ++i)
  snd_iprintf(buffer, " %02x", data->cs4398_regs[i]);
 snd_iprintf(buffer, "\n");
 dump_cs4362a_registers(data, buffer);
}
