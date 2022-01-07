
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct snd_m3 {int dummy; } ;


 int DSP_PORT_MEMORY_DATA ;
 int DSP_PORT_MEMORY_INDEX ;
 int DSP_PORT_MEMORY_TYPE ;
 int MEMTYPE_MASK ;
 int snd_m3_outw (struct snd_m3*,int,int ) ;

__attribute__((used)) static void snd_m3_assp_write(struct snd_m3 *chip, u16 region, u16 index, u16 data)
{
 snd_m3_outw(chip, region & MEMTYPE_MASK, DSP_PORT_MEMORY_TYPE);
 snd_m3_outw(chip, index, DSP_PORT_MEMORY_INDEX);
 snd_m3_outw(chip, data, DSP_PORT_MEMORY_DATA);
}
