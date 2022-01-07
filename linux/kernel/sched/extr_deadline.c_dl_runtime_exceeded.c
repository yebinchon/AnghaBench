
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sched_dl_entity {scalar_t__ runtime; } ;



__attribute__((used)) static
int dl_runtime_exceeded(struct sched_dl_entity *dl_se)
{
 return (dl_se->runtime <= 0);
}
