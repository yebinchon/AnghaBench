
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_probe_point {int lazy_line; int function; int file; } ;


 int zfree (int *) ;

__attribute__((used)) static void clear_perf_probe_point(struct perf_probe_point *pp)
{
 zfree(&pp->file);
 zfree(&pp->function);
 zfree(&pp->lazy_line);
}
