
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 int ENOMEM ;
 char* ERR_PTR (int ) ;
 int GFP_NOFS ;
 int SMK_LONGLABEL ;
 char* kzalloc (int,int ) ;
 int strlen (char const*) ;
 int strncpy (char*,char const*,int) ;

char *smk_parse_smack(const char *string, int len)
{
 char *smack;
 int i;

 if (len <= 0)
  len = strlen(string) + 1;






 if (string[0] == '-')
  return ERR_PTR(-EINVAL);

 for (i = 0; i < len; i++)
  if (string[i] > '~' || string[i] <= ' ' || string[i] == '/' ||
      string[i] == '"' || string[i] == '\\' || string[i] == '\'')
   break;

 if (i == 0 || i >= SMK_LONGLABEL)
  return ERR_PTR(-EINVAL);

 smack = kzalloc(i + 1, GFP_NOFS);
 if (smack == ((void*)0))
  return ERR_PTR(-ENOMEM);

 strncpy(smack, string, i);

 return smack;
}
