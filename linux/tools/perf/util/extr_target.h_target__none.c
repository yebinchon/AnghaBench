
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct target {int dummy; } ;


 int target__has_cpu (struct target*) ;
 int target__has_task (struct target*) ;

__attribute__((used)) static inline bool target__none(struct target *target)
{
 return !target__has_task(target) && !target__has_cpu(target);
}
