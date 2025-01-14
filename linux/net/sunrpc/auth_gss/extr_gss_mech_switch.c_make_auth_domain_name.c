
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GFP_KERNEL ;
 char* kmalloc (scalar_t__,int ) ;
 int strcat (char*,char*) ;
 int strcpy (char*,char*) ;
 scalar_t__ strlen (char*) ;

__attribute__((used)) static inline char *
make_auth_domain_name(char *name)
{
 static char *prefix = "gss/";
 char *new;

 new = kmalloc(strlen(name) + strlen(prefix) + 1, GFP_KERNEL);
 if (new) {
  strcpy(new, prefix);
  strcat(new, name);
 }
 return new;
}
