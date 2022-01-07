
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct process_symbol_args {int start; int name; } ;


 scalar_t__ kallsyms__is_function (char) ;
 scalar_t__ strcmp (char const*,int ) ;

__attribute__((used)) static int find_symbol_cb(void *arg, const char *name, char type,
     u64 start)
{
 struct process_symbol_args *args = arg;





 if (!(kallsyms__is_function(type) ||
       type == 'A') || strcmp(name, args->name))
  return 0;

 args->start = start;
 return 1;
}
