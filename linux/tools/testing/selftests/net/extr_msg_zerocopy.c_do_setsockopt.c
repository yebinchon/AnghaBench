
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int val ;


 int errno ;
 int error (int,int ,char*,int,int,int) ;
 scalar_t__ setsockopt (int,int,int,int*,int) ;

__attribute__((used)) static void do_setsockopt(int fd, int level, int optname, int val)
{
 if (setsockopt(fd, level, optname, &val, sizeof(val)))
  error(1, errno, "setsockopt %d.%d: %d", level, optname, val);
}
