
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_4__ {int min_delay; int max_delay; int max_bytes; int max_packets; scalar_t__ dist_jitter; int dist_delay; } ;
struct TYPE_3__ {int slot_next; int bytes_left; int packets_left; } ;
struct netem_sched_data {TYPE_2__ slot_config; TYPE_1__ slot; int slot_dist; } ;
typedef int s64 ;
typedef int s32 ;


 int prandom_u32 () ;
 int tabledist (int ,int ,int *,int ) ;

__attribute__((used)) static void get_slot_next(struct netem_sched_data *q, u64 now)
{
 s64 next_delay;

 if (!q->slot_dist)
  next_delay = q->slot_config.min_delay +
    (prandom_u32() *
     (q->slot_config.max_delay -
      q->slot_config.min_delay) >> 32);
 else
  next_delay = tabledist(q->slot_config.dist_delay,
           (s32)(q->slot_config.dist_jitter),
           ((void*)0), q->slot_dist);

 q->slot.slot_next = now + next_delay;
 q->slot.packets_left = q->slot_config.max_packets;
 q->slot.bytes_left = q->slot_config.max_bytes;
}
