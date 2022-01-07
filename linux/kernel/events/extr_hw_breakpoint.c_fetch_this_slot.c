
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bp_busy_slots {int pinned; } ;



__attribute__((used)) static void
fetch_this_slot(struct bp_busy_slots *slots, int weight)
{
 slots->pinned += weight;
}
