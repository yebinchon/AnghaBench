
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int O_RDWR ;
 int close (int) ;
 int dup2 (int,int) ;
 int open (char*,int ) ;

__attribute__((used)) static inline void dup_devnull(int to)
{
 int fd = open("/dev/null", O_RDWR);
 dup2(fd, to);
 close(fd);
}
