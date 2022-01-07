
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strcmp (char const*,char*) ;
 char* strstr (char const*,char*) ;

__attribute__((used)) static bool is_x86_retpoline(const char *name)
{
 const char *p = strstr(name, "__x86_indirect_thunk_");

 return p == name || !strcmp(name, "__indirect_thunk_start");
}
