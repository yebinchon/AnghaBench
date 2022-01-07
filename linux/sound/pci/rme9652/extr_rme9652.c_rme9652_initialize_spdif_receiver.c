
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_rme9652 {int control_register; } ;


 int RME9652_SPDIF_RESET ;
 int rme9652_write_spdif_codec (struct snd_rme9652*,int,int) ;

__attribute__((used)) static void rme9652_initialize_spdif_receiver (struct snd_rme9652 *rme9652)
{


 rme9652->control_register |= RME9652_SPDIF_RESET;

 rme9652_write_spdif_codec (rme9652, 4, 0x40);
 rme9652_write_spdif_codec (rme9652, 17, 0x13);
 rme9652_write_spdif_codec (rme9652, 6, 0x02);
}
