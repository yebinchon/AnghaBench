
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __tracing_path_set (char*,char const*) ;

void tracing_path_set(const char *mntpt)
{
 __tracing_path_set("tracing/", mntpt);
}
