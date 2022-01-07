
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_rme9652 {int running; int control_register; } ;


 int RME9652_control_register ;
 int RME9652_inp ;
 int rme9652_encode_spdif_in (int) ;
 int rme9652_start (struct snd_rme9652*) ;
 int rme9652_stop (struct snd_rme9652*) ;
 int rme9652_write (struct snd_rme9652*,int ,int ) ;

__attribute__((used)) static int rme9652_set_spdif_input(struct snd_rme9652 *rme9652, int in)
{
 int restart = 0;

 rme9652->control_register &= ~RME9652_inp;
 rme9652->control_register |= rme9652_encode_spdif_in(in);

 if ((restart = rme9652->running)) {
  rme9652_stop(rme9652);
 }

 rme9652_write(rme9652, RME9652_control_register, rme9652->control_register);

 if (restart) {
  rme9652_start(rme9652);
 }

 return 0;
}
