
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* skip_spaces (char*) ;
 char* strchr (char*,char) ;
 char* strim (char*) ;
 scalar_t__ strncmp (char*,char*,int) ;

char *aa_split_fqname(char *fqname, char **ns_name)
{
 char *name = strim(fqname);

 *ns_name = ((void*)0);
 if (name[0] == ':') {
  char *split = strchr(&name[1], ':');
  *ns_name = skip_spaces(&name[1]);
  if (split) {

   *split++ = 0;
   if (strncmp(split, "//", 2) == 0)
    split += 2;
   name = skip_spaces(split);
  } else

   name = ((void*)0);
 }
 if (name && *name == 0)
  name = ((void*)0);

 return name;
}
