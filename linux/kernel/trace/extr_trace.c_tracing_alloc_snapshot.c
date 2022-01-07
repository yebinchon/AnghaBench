
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENODEV ;
 int WARN_ONCE (int,char*) ;

int tracing_alloc_snapshot(void)
{
 WARN_ONCE(1, "Snapshot feature not enabled, but snapshot allocation used");
 return -ENODEV;
}
