
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_rme9652 {int control_register; int running; } ;


 int RME9652_Master ;
 int RME9652_control_register ;
 int RME9652_wsel ;
 int rme9652_start (struct snd_rme9652*) ;
 int rme9652_stop (struct snd_rme9652*) ;
 int rme9652_write (struct snd_rme9652*,int ,int) ;

__attribute__((used)) static int rme9652_set_sync_mode(struct snd_rme9652 *rme9652, int mode)
{
 int restart = 0;

 switch (mode) {
 case 0:
  rme9652->control_register &=
      ~(RME9652_Master | RME9652_wsel);
  break;
 case 1:
  rme9652->control_register =
      (rme9652->control_register & ~RME9652_wsel) | RME9652_Master;
  break;
 case 2:
  rme9652->control_register |=
      (RME9652_Master | RME9652_wsel);
  break;
 }

 if ((restart = rme9652->running)) {
  rme9652_stop(rme9652);
 }

 rme9652_write(rme9652, RME9652_control_register, rme9652->control_register);

 if (restart) {
  rme9652_start(rme9652);
 }

 return 0;
}
