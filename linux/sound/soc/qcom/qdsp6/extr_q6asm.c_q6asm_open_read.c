
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int uint16_t ;
struct audio_client {int dummy; } ;


 int __q6asm_open_read (struct audio_client*,int ,int ) ;

int q6asm_open_read(struct audio_client *ac, uint32_t format,
   uint16_t bits_per_sample)
{
 return __q6asm_open_read(ac, format, bits_per_sample);
}
