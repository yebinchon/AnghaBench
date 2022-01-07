
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct target {scalar_t__ per_thread; scalar_t__ system_wide; } ;



__attribute__((used)) static inline bool target__has_per_thread(struct target *target)
{
 return target->system_wide && target->per_thread;
}
