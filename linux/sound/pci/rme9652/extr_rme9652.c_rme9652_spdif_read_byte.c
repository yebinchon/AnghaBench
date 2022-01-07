
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_rme9652 {int dummy; } ;


 int RME9652_SPDIF_CLOCK ;
 int RME9652_SPDIF_READ ;
 int RME9652_status_register ;
 int rme9652_read (struct snd_rme9652*,int ) ;
 int rme9652_spdif_set_bit (struct snd_rme9652*,int ,int) ;

__attribute__((used)) static int rme9652_spdif_read_byte (struct snd_rme9652 *rme9652)
{
 long mask;
 long val;
 long i;

 val = 0;

 for (i = 0, mask = 0x80; i < 8; i++, mask >>= 1) {
  rme9652_spdif_set_bit (rme9652, RME9652_SPDIF_CLOCK, 1);
  if (rme9652_read (rme9652, RME9652_status_register) & RME9652_SPDIF_READ)
   val |= mask;
  rme9652_spdif_set_bit (rme9652, RME9652_SPDIF_CLOCK, 0);
 }

 return val;
}
