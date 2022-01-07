
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;


 int VERBOSE_TOROUT_STRING (char*) ;
 int kthread_should_stop () ;
 int schedule_timeout_uninterruptible (int) ;
 int snprintf (char*,int,char*,char*) ;
 int torture_shutdown_absorb (char*) ;

void torture_kthread_stopping(char *title)
{
 char buf[128];

 snprintf(buf, sizeof(buf), "Stopping %s", title);
 VERBOSE_TOROUT_STRING(buf);
 while (!kthread_should_stop()) {
  torture_shutdown_absorb(title);
  schedule_timeout_uninterruptible(1);
 }
}
