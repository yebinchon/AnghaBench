
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ isspace (char) ;
 int memmove (char*,char*,unsigned int) ;
 unsigned int strlen (char*) ;
 scalar_t__ strncmp (char*,char*,unsigned int) ;

__attribute__((used)) static int strip_rcs_crap(char *version)
{
 unsigned int len, full_len;

 if (strncmp(version, "$Revision", strlen("$Revision")) != 0)
  return 0;


 full_len = strlen(version) + strlen(version + strlen(version) + 1) + 2;



 len = strlen("$Revision");
 if (version[len] == ':' || version[len] == '$')
  len++;
 while (isspace(version[len]))
  len++;
 memmove(version, version+len, full_len-len);
 full_len -= len;


 len = 0;
 while (version[len] && !isspace(version[len]))
  len++;
 memmove(version + len, version + strlen(version),
  full_len - strlen(version));
 return 1;
}
