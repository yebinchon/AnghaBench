
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdac_device {size_t addr; int list; struct hdac_bus* bus; } ;
struct hdac_bus {int unsol_work; int num_codecs; int codec_powered; int ** caddr_tbl; } ;


 int WARN_ON (int) ;
 int clear_bit (size_t,int *) ;
 int flush_work (int *) ;
 int list_del_init (int *) ;
 scalar_t__ list_empty (int *) ;

void snd_hdac_bus_remove_device(struct hdac_bus *bus,
    struct hdac_device *codec)
{
 WARN_ON(bus != codec->bus);
 if (list_empty(&codec->list))
  return;
 list_del_init(&codec->list);
 bus->caddr_tbl[codec->addr] = ((void*)0);
 clear_bit(codec->addr, &bus->codec_powered);
 bus->num_codecs--;
 flush_work(&bus->unsol_work);
}
