
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct echoaudio {int * dsp_registers; } ;


 size_t readl (int *) ;

__attribute__((used)) static inline u32 get_dsp_register(struct echoaudio *chip, u32 index)
{
 return readl(&chip->dsp_registers[index]);
}
