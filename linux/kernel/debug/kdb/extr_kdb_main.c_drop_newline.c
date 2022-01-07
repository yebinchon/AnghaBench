
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t strlen (char*) ;

__attribute__((used)) static void drop_newline(char *buf)
{
 size_t len = strlen(buf);

 if (len == 0)
  return;
 if (*(buf + len - 1) == '\n')
  *(buf + len - 1) = '\0';
}
