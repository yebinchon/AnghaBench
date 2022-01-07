
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ asprintf (char**,char*,int ,char const*) ;
 int tracing_path_mount () ;

char *get_events_file(const char *name)
{
 char *file;

 if (asprintf(&file, "%s/events/%s", tracing_path_mount(), name) < 0)
  return ((void*)0);

 return file;
}
