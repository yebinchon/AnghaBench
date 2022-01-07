
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int add_path (char**,char*) ;
 char* argv0_path ;
 int astrcat (char**,char const*) ;
 int free (char*) ;
 char* get_argv_exec_path () ;
 char* getenv (char*) ;
 int setenv (char*,char*,int) ;

void setup_path(void)
{
 const char *old_path = getenv("PATH");
 char *new_path = ((void*)0);
 char *tmp = get_argv_exec_path();

 add_path(&new_path, tmp);
 add_path(&new_path, argv0_path);
 free(tmp);

 if (old_path)
  astrcat(&new_path, old_path);
 else
  astrcat(&new_path, "/usr/local/bin:/usr/bin:/bin");

 setenv("PATH", new_path, 1);

 free(new_path);
}
