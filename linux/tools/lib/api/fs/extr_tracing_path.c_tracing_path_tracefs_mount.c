
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __tracing_path_set (char*,char const*) ;
 char* tracefs__mount () ;
 char const* tracing_path ;

__attribute__((used)) static const char *tracing_path_tracefs_mount(void)
{
 const char *mnt;

 mnt = tracefs__mount();
 if (!mnt)
  return ((void*)0);

 __tracing_path_set("", mnt);

 return tracing_path;
}
