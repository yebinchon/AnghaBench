
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
typedef int u8 ;
typedef scalar_t__ u64 ;
struct thread {int dummy; } ;
struct intel_pt_queue {TYPE_3__* pt; struct thread* thread; } ;
struct addr_location {TYPE_2__* map; } ;
struct TYPE_6__ {scalar_t__ kernel_start; } ;
struct TYPE_5__ {scalar_t__ (* map_ip ) (TYPE_2__*,scalar_t__) ;TYPE_1__* dso; } ;
struct TYPE_4__ {int * long_name; } ;


 int EINVAL ;
 int PERF_RECORD_MISC_USER ;
 int intel_pt_match_pgd_ip (TYPE_3__*,scalar_t__,scalar_t__,int *) ;
 scalar_t__ stub1 (TYPE_2__*,scalar_t__) ;
 int thread__find_map (struct thread*,int ,scalar_t__,struct addr_location*) ;

__attribute__((used)) static int __intel_pt_pgd_ip(uint64_t ip, void *data)
{
 struct intel_pt_queue *ptq = data;
 struct thread *thread;
 struct addr_location al;
 u8 cpumode;
 u64 offset;

 if (ip >= ptq->pt->kernel_start)
  return intel_pt_match_pgd_ip(ptq->pt, ip, ip, ((void*)0));

 cpumode = PERF_RECORD_MISC_USER;

 thread = ptq->thread;
 if (!thread)
  return -EINVAL;

 if (!thread__find_map(thread, cpumode, ip, &al) || !al.map->dso)
  return -EINVAL;

 offset = al.map->map_ip(al.map, ip);

 return intel_pt_match_pgd_ip(ptq->pt, ip, offset,
         al.map->dso->long_name);
}
