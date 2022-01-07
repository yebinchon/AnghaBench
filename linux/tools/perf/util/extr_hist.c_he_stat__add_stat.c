
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct he_stat {scalar_t__ weight; scalar_t__ nr_events; scalar_t__ period_guest_us; scalar_t__ period_guest_sys; scalar_t__ period_us; scalar_t__ period_sys; scalar_t__ period; } ;



__attribute__((used)) static void he_stat__add_stat(struct he_stat *dest, struct he_stat *src)
{
 dest->period += src->period;
 dest->period_sys += src->period_sys;
 dest->period_us += src->period_us;
 dest->period_guest_sys += src->period_guest_sys;
 dest->period_guest_us += src->period_guest_us;
 dest->nr_events += src->nr_events;
 dest->weight += src->weight;
}
