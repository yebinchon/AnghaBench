
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* name; } ;


 TYPE_1__* current_file ;
 int fprintf (int ,char*,char*,int,char*) ;
 int stderr ;
 int strcmp (char*,char*) ;
 char* xstrdup (char*) ;
 int yylineno ;

__attribute__((used)) static char *do_warning_if(int argc, char *argv[])
{
 if (!strcmp(argv[0], "y"))
  fprintf(stderr, "%s:%d: %s\n",
   current_file->name, yylineno, argv[1]);

 return xstrdup("");
}
