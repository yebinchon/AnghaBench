
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdac_device {int (* exec_verb ) (struct hdac_device*,unsigned int,unsigned int,unsigned int*) ;int addr; int bus; } ;


 int snd_hdac_bus_exec_verb (int ,int ,unsigned int,unsigned int*) ;
 int stub1 (struct hdac_device*,unsigned int,unsigned int,unsigned int*) ;

int snd_hdac_exec_verb(struct hdac_device *codec, unsigned int cmd,
         unsigned int flags, unsigned int *res)
{
 if (codec->exec_verb)
  return codec->exec_verb(codec, cmd, flags, res);
 return snd_hdac_bus_exec_verb(codec->bus, codec->addr, cmd, res);
}
