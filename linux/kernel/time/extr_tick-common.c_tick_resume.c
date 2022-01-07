
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int tick_resume_broadcast () ;
 int tick_resume_local () ;

void tick_resume(void)
{
 tick_resume_broadcast();
 tick_resume_local();
}
