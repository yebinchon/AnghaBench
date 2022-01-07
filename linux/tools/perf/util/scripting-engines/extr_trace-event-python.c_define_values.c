
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tep_print_flag_sym {struct tep_print_flag_sym* next; int str; int value; } ;
typedef enum tep_print_arg_type { ____Placeholder_tep_print_arg_type } tep_print_arg_type ;


 int define_value (int,char const*,char const*,int ,int ) ;

__attribute__((used)) static void define_values(enum tep_print_arg_type field_type,
     struct tep_print_flag_sym *field,
     const char *ev_name,
     const char *field_name)
{
 define_value(field_type, ev_name, field_name, field->value,
       field->str);

 if (field->next)
  define_values(field_type, field->next, ev_name, field_name);
}
