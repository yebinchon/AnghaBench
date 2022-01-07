
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __tracing_path_set (char*,char const*) ;
 char* debugfs__mount () ;
 char const* tracing_path ;

__attribute__((used)) static const char *tracing_path_debugfs_mount(void)
{
 const char *mnt;

 mnt = debugfs__mount();
 if (!mnt)
  return ((void*)0);

 __tracing_path_set("tracing/", mnt);

 return tracing_path;
}
