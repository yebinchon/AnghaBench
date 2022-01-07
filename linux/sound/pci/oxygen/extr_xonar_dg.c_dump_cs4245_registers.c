
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_info_buffer {int dummy; } ;
struct oxygen {struct dg* model_data; } ;
struct dg {int * cs4245_shadow; } ;


 unsigned int ARRAY_SIZE (int *) ;
 int CS4245_INT_STATUS ;
 int cs4245_read_spi (struct oxygen*,int ) ;
 int snd_iprintf (struct snd_info_buffer*,char*,...) ;

void dump_cs4245_registers(struct oxygen *chip,
      struct snd_info_buffer *buffer)
{
 struct dg *data = chip->model_data;
 unsigned int addr;

 snd_iprintf(buffer, "\nCS4245:");
 cs4245_read_spi(chip, CS4245_INT_STATUS);
 for (addr = 1; addr < ARRAY_SIZE(data->cs4245_shadow); addr++)
  snd_iprintf(buffer, " %02x", data->cs4245_shadow[addr]);
 snd_iprintf(buffer, "\n");
}
