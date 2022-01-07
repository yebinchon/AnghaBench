
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_info_buffer {int dummy; } ;
struct oxygen {int dummy; } ;


 int dump_ak4396_registers (struct oxygen*,struct snd_info_buffer*) ;
 int dump_wm8785_registers (struct oxygen*,struct snd_info_buffer*) ;

__attribute__((used)) static void dump_oxygen_registers(struct oxygen *chip,
      struct snd_info_buffer *buffer)
{
 dump_ak4396_registers(chip, buffer);
 dump_wm8785_registers(chip, buffer);
}
