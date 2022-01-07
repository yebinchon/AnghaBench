
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int atoi (char*) ;
 char* getenv (char*) ;
 int pager_columns ;

int pager_get_columns(void)
{
 char *s;

 s = getenv("COLUMNS");
 if (s)
  return atoi(s);

 return (pager_columns ? pager_columns : 80) - 2;
}
