
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_rme9652 {int control_register; } ;


 int RME9652_Master ;
 int RME9652_wsel ;

__attribute__((used)) static int rme9652_sync_mode(struct snd_rme9652 *rme9652)
{
 if (rme9652->control_register & RME9652_wsel) {
  return 2;
 } else if (rme9652->control_register & RME9652_Master) {
  return 1;
 } else {
  return 0;
 }
}
