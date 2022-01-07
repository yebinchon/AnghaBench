
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdac_bus {int unsol_work; int codec_list; int stream_list; } ;


 int WARN_ON (int) ;
 int cancel_work_sync (int *) ;
 int list_empty (int *) ;

void snd_hdac_bus_exit(struct hdac_bus *bus)
{
 WARN_ON(!list_empty(&bus->stream_list));
 WARN_ON(!list_empty(&bus->codec_list));
 cancel_work_sync(&bus->unsol_work);
}
