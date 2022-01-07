
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdac_bus {int cmd_mutex; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int snd_hdac_bus_exec_verb_unlocked (struct hdac_bus*,unsigned int,unsigned int,unsigned int*) ;

int snd_hdac_bus_exec_verb(struct hdac_bus *bus, unsigned int addr,
      unsigned int cmd, unsigned int *res)
{
 int err;

 mutex_lock(&bus->cmd_mutex);
 err = snd_hdac_bus_exec_verb_unlocked(bus, addr, cmd, res);
 mutex_unlock(&bus->cmd_mutex);
 return err;
}
