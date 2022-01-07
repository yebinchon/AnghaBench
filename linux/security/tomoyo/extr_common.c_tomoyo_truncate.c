
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strlen (char*) ;

__attribute__((used)) static int tomoyo_truncate(char *str)
{
 char *start = str;

 while (*(unsigned char *) str > (unsigned char) ' ')
  str++;
 *str = '\0';
 return strlen(start) + 1;
}
