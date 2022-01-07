
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* tracing_path_debugfs_mount () ;
 char* tracing_path_tracefs_mount () ;

const char *tracing_path_mount(void)
{
 const char *mnt;

 mnt = tracing_path_tracefs_mount();
 if (mnt)
  return mnt;

 mnt = tracing_path_debugfs_mount();

 return mnt;
}
