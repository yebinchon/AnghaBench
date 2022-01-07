
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int sprintf (char*,char*,int) ;
 char* xstrdup (char*) ;
 int yylineno ;

__attribute__((used)) static char *do_lineno(int argc, char *argv[])
{
 char buf[16];

 sprintf(buf, "%d", yylineno);

 return xstrdup(buf);
}
