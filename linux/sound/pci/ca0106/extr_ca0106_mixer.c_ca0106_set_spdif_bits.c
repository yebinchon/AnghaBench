
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ca0106 {int * spdif_str_bits; } ;


 scalar_t__ SPCS0 ;
 int snd_ca0106_ptr_write (struct snd_ca0106*,scalar_t__,int ,int ) ;

__attribute__((used)) static void ca0106_set_spdif_bits(struct snd_ca0106 *emu, int idx)
{
 snd_ca0106_ptr_write(emu, SPCS0 + idx, 0, emu->spdif_str_bits[idx]);
}
