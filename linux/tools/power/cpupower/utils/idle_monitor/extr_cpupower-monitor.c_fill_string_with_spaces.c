
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int free (char*) ;
 char* malloc (int) ;
 int snprintf (char*,int,char*,char*) ;
 int strcpy (char*,char*) ;
 int strlen (char*) ;

int fill_string_with_spaces(char *s, int n)
{
 char *temp;
 int len = strlen(s);

 if (len >= n)
  return -1;

 temp = malloc(sizeof(char) * (n+1));
 for (; len < n; len++)
  s[len] = ' ';
 s[len] = '\0';
 snprintf(temp, n+1, " %s", s);
 strcpy(s, temp);
 free(temp);
 return 0;
}
