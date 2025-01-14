
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
typedef int u64 ;
struct thread {int dummy; } ;
struct machine {int dummy; } ;
struct addr_location {TYPE_2__* map; } ;
struct TYPE_5__ {scalar_t__ status; } ;
struct TYPE_7__ {int is_64_bit; TYPE_1__ data; } ;
struct TYPE_6__ {long (* map_ip ) (TYPE_2__*,int ) ;TYPE_4__* dso; } ;


 scalar_t__ DSO_DATA_STATUS_ERROR ;
 int PERF_RECORD_MISC_KERNEL ;
 int PERF_RECORD_MISC_USER ;
 int dso__data_read_offset (TYPE_4__*,struct machine*,long,void*,int) ;
 scalar_t__ machine__kernel_ip (struct machine*,int ) ;
 scalar_t__ map__load (TYPE_2__*) ;
 long stub1 (TYPE_2__*,int ) ;
 int thread__find_map (struct thread*,int ,int ,struct addr_location*) ;

int thread__memcpy(struct thread *thread, struct machine *machine,
     void *buf, u64 ip, int len, bool *is64bit)
{
       u8 cpumode = PERF_RECORD_MISC_USER;
       struct addr_location al;
       long offset;

       if (machine__kernel_ip(machine, ip))
               cpumode = PERF_RECORD_MISC_KERNEL;

       if (!thread__find_map(thread, cpumode, ip, &al) || !al.map->dso ||
    al.map->dso->data.status == DSO_DATA_STATUS_ERROR ||
    map__load(al.map) < 0)
               return -1;

       offset = al.map->map_ip(al.map, ip);
       if (is64bit)
               *is64bit = al.map->dso->is_64_bit;

       return dso__data_read_offset(al.map->dso, machine, offset, buf, len);
}
