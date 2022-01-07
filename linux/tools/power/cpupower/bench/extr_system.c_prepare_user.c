
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct config {unsigned int rounds; int cycles; unsigned int sleep; unsigned int sleep_step; int load; unsigned int load_step; scalar_t__ output; scalar_t__ verbose; } ;


 int printf (char*,int) ;
 scalar_t__ stdout ;

void prepare_user(const struct config *config)
{
 unsigned long sleep_time = 0;
 unsigned long load_time = 0;
 unsigned int round;

 for (round = 0; round < config->rounds; round++) {
  sleep_time += 2 * config->cycles *
   (config->sleep + config->sleep_step * round);
  load_time += 2 * config->cycles *
   (config->load + config->load_step * round) +
   (config->load + config->load_step * round * 4);
 }

 if (config->verbose || config->output != stdout)
  printf("approx. test duration: %im\n",
         (int)((sleep_time + load_time) / 60000000));
}
