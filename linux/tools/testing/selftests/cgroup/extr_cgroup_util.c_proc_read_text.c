
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int path ;


 int PATH_MAX ;
 char read_text (char*,char*,size_t) ;
 int snprintf (char*,int,char*,int,char const*) ;

char proc_read_text(int pid, const char *item, char *buf, size_t size)
{
 char path[PATH_MAX];

 snprintf(path, sizeof(path), "/proc/%d/%s", pid, item);

 return read_text(path, buf, size);
}
