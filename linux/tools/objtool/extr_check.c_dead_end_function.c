
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct symbol {int dummy; } ;
struct objtool_file {int dummy; } ;


 int __dead_end_function (struct objtool_file*,struct symbol*,int ) ;

__attribute__((used)) static bool dead_end_function(struct objtool_file *file, struct symbol *func)
{
 return __dead_end_function(file, func, 0);
}
