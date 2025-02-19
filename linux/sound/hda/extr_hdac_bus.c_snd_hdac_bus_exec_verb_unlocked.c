
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hdac_bus {TYPE_1__* ops; scalar_t__ sync_write; } ;
struct TYPE_2__ {int (* command ) (struct hdac_bus*,unsigned int) ;int (* get_response ) (struct hdac_bus*,unsigned int,unsigned int*) ;} ;


 int EAGAIN ;
 int EINVAL ;
 int stub1 (struct hdac_bus*,unsigned int) ;
 int stub2 (struct hdac_bus*,unsigned int,unsigned int*) ;
 int stub3 (struct hdac_bus*,unsigned int,unsigned int*) ;
 int trace_hda_get_response (struct hdac_bus*,unsigned int,unsigned int) ;
 int trace_hda_send_cmd (struct hdac_bus*,unsigned int) ;

int snd_hdac_bus_exec_verb_unlocked(struct hdac_bus *bus, unsigned int addr,
        unsigned int cmd, unsigned int *res)
{
 unsigned int tmp;
 int err;

 if (cmd == ~0)
  return -EINVAL;

 if (res)
  *res = -1;
 else if (bus->sync_write)
  res = &tmp;
 for (;;) {
  trace_hda_send_cmd(bus, cmd);
  err = bus->ops->command(bus, cmd);
  if (err != -EAGAIN)
   break;

  err = bus->ops->get_response(bus, addr, &tmp);
  if (err)
   break;
 }
 if (!err && res) {
  err = bus->ops->get_response(bus, addr, res);
  trace_hda_get_response(bus, addr, *res);
 }
 return err;
}
