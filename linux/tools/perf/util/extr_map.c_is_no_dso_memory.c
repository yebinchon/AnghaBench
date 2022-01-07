
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strcmp (char const*,char*) ;
 int strncmp (char const*,char*,int) ;

__attribute__((used)) static inline int is_no_dso_memory(const char *filename)
{
 return !strncmp(filename, "[stack", 6) ||
        !strncmp(filename, "/SYSV",5) ||
        !strcmp(filename, "[heap]");
}
