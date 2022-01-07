
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pid_t ;


 scalar_t__ EINTR ;
 scalar_t__ WEXITSTATUS (int) ;
 int WIFEXITED (int) ;
 scalar_t__ errno ;
 int waitpid (int,int*,int ) ;

__attribute__((used)) static int wait_for_pid(pid_t pid)
{
 int status, ret;

again:
 ret = waitpid(pid, &status, 0);
 if (ret == -1) {
  if (errno == EINTR)
   goto again;
  return -1;
 }
 if (ret != pid)
  goto again;

 if (!WIFEXITED(status) || WEXITSTATUS(status) != 0)
  return -1;

 return 0;
}
