
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ORANGEFS_ALL ;
 int ORANGEFS_VERBOSE ;
 int strcmp (char*,int ) ;

__attribute__((used)) static int keyword_is_amalgam(char *keyword)
{
 int rc = 0;

 if ((!strcmp(keyword, ORANGEFS_ALL)) || (!strcmp(keyword, ORANGEFS_VERBOSE)))
  rc = 1;

 return rc;
}
