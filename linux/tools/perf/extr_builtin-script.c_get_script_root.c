
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dirent {int d_name; } ;


 scalar_t__ ends_with (char*,char const*) ;
 int free (char*) ;
 char* strdup (int ) ;

__attribute__((used)) static char *get_script_root(struct dirent *script_dirent, const char *suffix)
{
 char *script_root, *str;

 script_root = strdup(script_dirent->d_name);
 if (!script_root)
  return ((void*)0);

 str = (char *)ends_with(script_root, suffix);
 if (!str) {
  free(script_root);
  return ((void*)0);
 }

 *str = '\0';
 return script_root;
}
