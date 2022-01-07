
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int kfree (char*) ;
 char* strchr (char*,char) ;

__attribute__((used)) static void gssp_hostbased_service(char **principal)
{
 char *c;

 if (!*principal)
  return;


 c = strchr(*principal, '@');
 if (c) {
  *c = '\0';


  c = strchr(*principal, '/');
  if (c)
   *c = '@';
 }
 if (!c) {

  kfree(*principal);
  *principal = ((void*)0);
 }
}
