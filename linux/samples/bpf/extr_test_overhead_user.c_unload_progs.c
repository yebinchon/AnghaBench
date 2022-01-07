
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int close (int ) ;
 int * event_fd ;
 int * prog_fd ;

__attribute__((used)) static void unload_progs(void)
{
 close(prog_fd[0]);
 close(prog_fd[1]);
 close(event_fd[0]);
 close(event_fd[1]);
}
