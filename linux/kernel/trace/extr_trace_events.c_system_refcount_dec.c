
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct event_subsystem {int ref_count; } ;



__attribute__((used)) static int system_refcount_dec(struct event_subsystem *system)
{
 return --system->ref_count;
}
