
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ MAP_FAILED ;
 int MAP_PRIVATE ;
 int PROT_EXEC ;
 int PROT_READ ;
 int _SC_PAGESIZE ;
 scalar_t__ marker_addr ;
 scalar_t__ mmap (int *,long,int,int ,int,int ) ;
 long sysconf (int ) ;

__attribute__((used)) static int
perf_open_marker_file(int fd)
{
 long pgsz;

 pgsz = sysconf(_SC_PAGESIZE);
 if (pgsz == -1)
  return -1;
 marker_addr = mmap(((void*)0), pgsz, PROT_READ|PROT_EXEC, MAP_PRIVATE, fd, 0);
 return (marker_addr == MAP_FAILED) ? -1 : 0;
}
