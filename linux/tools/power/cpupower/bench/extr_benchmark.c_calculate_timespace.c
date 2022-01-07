
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct config {scalar_t__ verbose; } ;


 unsigned int GAUGECOUNT ;
 int ROUNDS (unsigned int) ;
 int dprintf (char*,unsigned int) ;
 long long get_time () ;
 int printf (char*,...) ;

unsigned int calculate_timespace(long load, struct config *config)
{
 int i;
 long long now, then;
 unsigned int estimated = GAUGECOUNT;
 unsigned int rounds = 0;
 unsigned int timed = 0;

 if (config->verbose)
  printf("calibrating load of %lius, please wait...\n", load);


 now = get_time();
 ROUNDS(estimated);
 then = get_time();

 timed = (unsigned int)(then - now);



 for (i = 0; i < 4; i++) {
  rounds = (unsigned int)(load * estimated / timed);
  dprintf("calibrating with %u rounds\n", rounds);
  now = get_time();
  ROUNDS(rounds);
  then = get_time();

  timed = (unsigned int)(then - now);
  estimated = rounds;
 }
 if (config->verbose)
  printf("calibration done\n");

 return estimated;
}
