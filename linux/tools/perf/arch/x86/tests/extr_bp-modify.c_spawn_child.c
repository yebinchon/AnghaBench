
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PTRACE_TRACEME ;
 int SIGCONT ;
 int bp_1 () ;
 int exit (int) ;
 int fork () ;
 int pr_debug (char*) ;
 int ptrace (int ,int ,int *,int *) ;
 int raise (int ) ;

__attribute__((used)) static int spawn_child(void)
{
 int child = fork();

 if (child == 0) {





  int err = ptrace(PTRACE_TRACEME, 0, ((void*)0), ((void*)0));

  if (err) {
   pr_debug("failed to PTRACE_TRACEME\n");
   exit(1);
  }

  raise(SIGCONT);
  bp_1();
  exit(0);
 }

 return child;
}
