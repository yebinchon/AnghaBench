
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SIGALRM ;
 int WRITE_ONCE (int ,int) ;
 int printf (char*) ;
 int stop ;

__attribute__((used)) static void stop_handler(int signum)
{
 if (signum != SIGALRM)
  printf("stopping...\n");
 WRITE_ONCE(stop, 1);
}
