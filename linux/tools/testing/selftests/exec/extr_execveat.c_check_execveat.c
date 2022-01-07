
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int check_execveat_invoked_rc (int,char const*,int,int,int) ;

__attribute__((used)) static int check_execveat(int fd, const char *path, int flags)
{
 return check_execveat_invoked_rc(fd, path, flags, 99, 99);
}
