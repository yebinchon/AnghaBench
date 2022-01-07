
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ca0106 {scalar_t__* spdif_str_bits; scalar_t__* spdif_bits; } ;


 scalar_t__ SPCS0 ;
 int snd_ca0106_ptr_write (struct snd_ca0106*,scalar_t__,int ,scalar_t__) ;

__attribute__((used)) static void restore_spdif_bits(struct snd_ca0106 *chip, int idx)
{
 if (chip->spdif_str_bits[idx] != chip->spdif_bits[idx]) {
  chip->spdif_str_bits[idx] = chip->spdif_bits[idx];
  snd_ca0106_ptr_write(chip, SPCS0 + idx, 0,
         chip->spdif_str_bits[idx]);
 }
}
