
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pwd ;


 int PATH_MAX ;
 int * getcwd (char*,int) ;
 char* strdup (char*) ;

char *get_current_dir_name(void)
{
 char pwd[PATH_MAX];

 return getcwd(pwd, sizeof(pwd)) == ((void*)0) ? ((void*)0) : strdup(pwd);
}
