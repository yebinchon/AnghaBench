
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int printf (char*,char*) ;
 char* xstrdup (char*) ;

__attribute__((used)) static char *do_info(int argc, char *argv[])
{
 printf("%s\n", argv[0]);

 return xstrdup("");
}
