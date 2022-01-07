
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_rme9652 {int control_register; scalar_t__ passthru; scalar_t__ thru_bits; } ;


 unsigned int RME9652_NCHANNELS ;
 scalar_t__ RME9652_control_register ;
 int RME9652_inp_0 ;
 scalar_t__ RME9652_thru_base ;
 int rme9652_compute_period_size (struct snd_rme9652*) ;
 int rme9652_encode_latency (int) ;
 int rme9652_reset_hw_pointer (struct snd_rme9652*) ;
 int rme9652_set_rate (struct snd_rme9652*,int) ;
 int rme9652_write (struct snd_rme9652*,scalar_t__,int) ;

__attribute__((used)) static void snd_rme9652_set_defaults(struct snd_rme9652 *rme9652)
{
 unsigned int k;
 rme9652->control_register =
     RME9652_inp_0 | rme9652_encode_latency(7);

 rme9652_write(rme9652, RME9652_control_register, rme9652->control_register);

 rme9652_reset_hw_pointer(rme9652);
 rme9652_compute_period_size(rme9652);



 for (k = 0; k < RME9652_NCHANNELS; ++k)
  rme9652_write(rme9652, RME9652_thru_base + k * 4, 0);

 rme9652->thru_bits = 0;
 rme9652->passthru = 0;



 rme9652_set_rate(rme9652, 48000);
}
