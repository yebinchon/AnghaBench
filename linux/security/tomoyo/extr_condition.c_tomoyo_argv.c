
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct tomoyo_path_info {char const* name; } ;
struct tomoyo_argv {unsigned int const index; scalar_t__ is_not; int value; } ;


 int tomoyo_fill_path_info (struct tomoyo_path_info*) ;
 int tomoyo_path_matches_pattern (struct tomoyo_path_info*,int ) ;

__attribute__((used)) static bool tomoyo_argv(const unsigned int index, const char *arg_ptr,
   const int argc, const struct tomoyo_argv *argv,
   u8 *checked)
{
 int i;
 struct tomoyo_path_info arg;

 arg.name = arg_ptr;
 for (i = 0; i < argc; argv++, checked++, i++) {
  bool result;

  if (index != argv->index)
   continue;
  *checked = 1;
  tomoyo_fill_path_info(&arg);
  result = tomoyo_path_matches_pattern(&arg, argv->value);
  if (argv->is_not)
   result = !result;
  if (!result)
   return 0;
 }
 return 1;
}
