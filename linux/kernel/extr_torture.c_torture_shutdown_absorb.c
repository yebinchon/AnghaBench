
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ FULLSTOP_SHUTDOWN ;
 int MAX_SCHEDULE_TIMEOUT ;
 scalar_t__ READ_ONCE (int ) ;
 int fullstop ;
 int pr_notice (char*,char const*) ;
 int schedule_timeout_uninterruptible (int ) ;

void torture_shutdown_absorb(const char *title)
{
 while (READ_ONCE(fullstop) == FULLSTOP_SHUTDOWN) {
  pr_notice("torture thread %s parking due to system shutdown\n",
     title);
  schedule_timeout_uninterruptible(MAX_SCHEDULE_TIMEOUT);
 }
}
