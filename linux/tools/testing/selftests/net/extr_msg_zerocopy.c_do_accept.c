
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int accept (int,int *,int *) ;
 scalar_t__ close (int) ;
 int errno ;
 int error (int,int ,char*) ;

__attribute__((used)) static int do_accept(int fd)
{
 int fda = fd;

 fd = accept(fda, ((void*)0), ((void*)0));
 if (fd == -1)
  error(1, errno, "accept");
 if (close(fda))
  error(1, errno, "close listen sock");

 return fd;
}
