
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pid {int dummy; } ;
struct fd {int file; } ;


 int EBADF ;
 struct pid* ERR_PTR (int ) ;
 int IS_ERR (struct pid*) ;
 struct fd fdget (unsigned int) ;
 int fdput (struct fd) ;
 int get_pid (struct pid*) ;
 struct pid* pidfd_pid (int ) ;

__attribute__((used)) static struct pid *pidfd_get_pid(unsigned int fd)
{
 struct fd f;
 struct pid *pid;

 f = fdget(fd);
 if (!f.file)
  return ERR_PTR(-EBADF);

 pid = pidfd_pid(f.file);
 if (!IS_ERR(pid))
  get_pid(pid);

 fdput(f);
 return pid;
}
