
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DIR ;


 char* get_tracing_file (char*) ;
 int * opendir (char*) ;
 int put_events_file (char*) ;

DIR *tracing_events__opendir(void)
{
 DIR *dir = ((void*)0);
 char *path = get_tracing_file("events");

 if (path) {
  dir = opendir(path);
  put_events_file(path);
 }

 return dir;
}
