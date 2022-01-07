
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char toupper (char) ;

__attribute__((used)) static void uppercase(char *str, size_t len)
{
 size_t i;

 for (i = 0; i < len && str[i] != '\0'; i++)
  str[i] = toupper(str[i]);
}
