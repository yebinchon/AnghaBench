
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _SC_PAGESIZE ;
 int marker_addr ;
 int munmap (int ,long) ;
 long sysconf (int ) ;

__attribute__((used)) static void
perf_close_marker_file(void)
{
 long pgsz;

 if (!marker_addr)
  return;

 pgsz = sysconf(_SC_PAGESIZE);
 if (pgsz == -1)
  return;

 munmap(marker_addr, pgsz);
}
