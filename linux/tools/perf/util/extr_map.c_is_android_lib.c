
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strncmp (char const*,char*,int) ;

__attribute__((used)) static inline int is_android_lib(const char *filename)
{
 return !strncmp(filename, "/data/app-lib", 13) ||
        !strncmp(filename, "/system/lib", 11);
}
