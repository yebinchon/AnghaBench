
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct dt_info {int dummy; } ;
struct TYPE_4__ {int f; } ;
struct TYPE_3__ {TYPE_2__* file; } ;


 TYPE_2__* current_srcfile ;
 int die (char*) ;
 struct dt_info* parser_output ;
 int srcfile_push (char const*) ;
 int treesource_error ;
 int yyin ;
 TYPE_1__ yylloc ;
 scalar_t__ yyparse () ;

struct dt_info *dt_from_source(const char *fname)
{
 parser_output = ((void*)0);
 treesource_error = 0;

 srcfile_push(fname);
 yyin = current_srcfile->f;
 yylloc.file = current_srcfile;

 if (yyparse() != 0)
  die("Unable to parse input tree\n");

 if (treesource_error)
  die("Syntax error parsing input tree\n");

 return parser_output;
}
