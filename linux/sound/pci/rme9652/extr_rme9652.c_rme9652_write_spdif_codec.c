
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_rme9652 {int dummy; } ;


 int RME9652_SPDIF_SELECT ;
 int rme9652_spdif_set_bit (struct snd_rme9652*,int ,int) ;
 int rme9652_spdif_write_byte (struct snd_rme9652*,int const) ;

__attribute__((used)) static void rme9652_write_spdif_codec (struct snd_rme9652 *rme9652, const int address, const int data)
{
 rme9652_spdif_set_bit (rme9652, RME9652_SPDIF_SELECT, 1);
 rme9652_spdif_write_byte (rme9652, 0x20);
 rme9652_spdif_write_byte (rme9652, address);
 rme9652_spdif_write_byte (rme9652, data);
 rme9652_spdif_set_bit (rme9652, RME9652_SPDIF_SELECT, 0);
}
