
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int pperror (char*,char*) ;
 int strcmp (char*,char*) ;

__attribute__((used)) static char *do_error_if(int argc, char *argv[])
{
 if (!strcmp(argv[0], "y"))
  pperror("%s", argv[1]);

 return ((void*)0);
}
