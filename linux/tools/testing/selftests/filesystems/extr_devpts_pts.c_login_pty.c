
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int STDERR_FILENO ;
 int TIOCSCTTY ;
 int close (int) ;
 int ioctl (int,int ,int *) ;
 int setsid () ;
 int terminal_set_stdfds (int) ;

__attribute__((used)) static int login_pty(int fd)
{
 int ret;

 setsid();

 ret = ioctl(fd, TIOCSCTTY, ((void*)0));
 if (ret < 0)
  return -1;

 ret = terminal_set_stdfds(fd);
 if (ret < 0)
  return -1;

 if (fd > STDERR_FILENO)
  close(fd);

 return 0;
}
