
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int free (char*) ;
 char* malloc (size_t) ;
 int snprintf (char*,size_t,char*,char*,...) ;
 int strlen (char*) ;

__attribute__((used)) static char *change_name(char *name, char *orig_name, int dup)
{
 char *new_name = ((void*)0);
 size_t len;

 if (!name)
  name = orig_name;

 if (dup >= 10)
  goto out;





 if (dup < 0)
  len = strlen(name) + sizeof("_");
 else
  len = strlen(orig_name) + sizeof("_dupl_X");

 new_name = malloc(len);
 if (!new_name)
  goto out;

 if (dup < 0)
  snprintf(new_name, len, "_%s", name);
 else
  snprintf(new_name, len, "%s_dupl_%d", orig_name, dup);

out:
 if (name != orig_name)
  free(name);
 return new_name;
}
