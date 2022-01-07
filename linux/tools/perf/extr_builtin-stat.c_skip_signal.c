
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ interval; } ;


 int child_pid ;
 int done ;
 int signr ;
 TYPE_1__ stat_config ;

__attribute__((used)) static void skip_signal(int signo)
{
 if ((child_pid == -1) || stat_config.interval)
  done = 1;

 signr = signo;






 child_pid = -1;
}
