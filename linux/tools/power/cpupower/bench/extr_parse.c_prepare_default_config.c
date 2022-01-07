
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct config {int sleep; int load; int sleep_step; int load_step; int cycles; int rounds; int output; int governor; scalar_t__ verbose; int prio; scalar_t__ cpu; } ;


 int DEFAULT_CONFIG_FILE ;
 int SCHED_HIGH ;
 int dprintf (char*) ;
 struct config* malloc (int) ;
 scalar_t__ prepare_config (int ,struct config*) ;
 int stdout ;
 int strncpy (int ,char*,int) ;

struct config *prepare_default_config()
{
 struct config *config = malloc(sizeof(struct config));

 dprintf("loading defaults\n");

 config->sleep = 500000;
 config->load = 500000;
 config->sleep_step = 500000;
 config->load_step = 500000;
 config->cycles = 5;
 config->rounds = 50;
 config->cpu = 0;
 config->prio = SCHED_HIGH;
 config->verbose = 0;
 strncpy(config->governor, "ondemand", sizeof(config->governor));

 config->output = stdout;





 return config;
}
