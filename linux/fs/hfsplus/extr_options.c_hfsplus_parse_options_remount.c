
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int substring_t ;


 int MAX_OPT_ARGS ;
 int match_token (char*,int ,int *) ;

 char* strsep (char**,char*) ;
 int tokens ;

int hfsplus_parse_options_remount(char *input, int *force)
{
 char *p;
 substring_t args[MAX_OPT_ARGS];
 int token;

 if (!input)
  return 1;

 while ((p = strsep(&input, ",")) != ((void*)0)) {
  if (!*p)
   continue;

  token = match_token(p, tokens, args);
  switch (token) {
  case 128:
   *force = 1;
   break;
  default:
   break;
  }
 }

 return 1;
}
