
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 int strlen (char*) ;
 int strncpy (char*,char*,int) ;

__attribute__((used)) static int verify_gov(char *new_gov, char *passed_gov)
{
 unsigned int i, j = 0;

 if (!passed_gov || (strlen(passed_gov) > 19))
  return -EINVAL;

 strncpy(new_gov, passed_gov, 20);
 for (i = 0; i < 20; i++) {
  if (j) {
   new_gov[i] = '\0';
   continue;
  }
  if ((new_gov[i] >= 'a') && (new_gov[i] <= 'z'))
   continue;

  if ((new_gov[i] >= 'A') && (new_gov[i] <= 'Z'))
   continue;

  if (new_gov[i] == '-')
   continue;

  if (new_gov[i] == '_')
   continue;

  if (new_gov[i] == '\0') {
   j = 1;
   continue;
  }
  return -EINVAL;
 }
 new_gov[19] = '\0';
 return 0;
}
