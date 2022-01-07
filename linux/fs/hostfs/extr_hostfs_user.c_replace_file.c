
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int dup2 (int,int) ;

int replace_file(int oldfd, int fd)
{
 return dup2(oldfd, fd);
}
