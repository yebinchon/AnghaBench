
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int oom_killer_disabled ;
 int pr_info (char*) ;

void oom_killer_enable(void)
{
 oom_killer_disabled = 0;
 pr_info("OOM killer enabled.\n");
}
