
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct conf_printer {int (* print_comment ) (int *,char*,void*) ;} ;
typedef int buf ;
struct TYPE_4__ {TYPE_1__* prompt; } ;
struct TYPE_3__ {char* text; } ;
typedef int FILE ;


 TYPE_2__ rootmenu ;
 int snprintf (char*,int,char*,char*) ;
 int stub1 (int *,char*,void*) ;

__attribute__((used)) static void
conf_write_heading(FILE *fp, struct conf_printer *printer, void *printer_arg)
{
 char buf[256];

 snprintf(buf, sizeof(buf),
     "\n"
     "Automatically generated file; DO NOT EDIT.\n"
     "%s\n",
     rootmenu.prompt->text);

 printer->print_comment(fp, buf, printer_arg);
}
