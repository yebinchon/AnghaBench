
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct target {scalar_t__ uid_str; scalar_t__ pid; scalar_t__ tid; } ;



__attribute__((used)) static inline bool target__has_task(struct target *target)
{
 return target->tid || target->pid || target->uid_str;
}
