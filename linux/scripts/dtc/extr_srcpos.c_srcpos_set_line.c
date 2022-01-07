
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* name; int lineno; } ;


 TYPE_1__* current_srcfile ;
 int initial_cpp ;
 int set_initial_path (char*) ;

void srcpos_set_line(char *f, int l)
{
 current_srcfile->name = f;
 current_srcfile->lineno = l;

 if (initial_cpp) {
  initial_cpp = 0;
  set_initial_path(f);
 }
}
