
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union string_value {int s; int u; } ;
typedef enum symbol_type { ____Placeholder_symbol_type } symbol_type ;
typedef enum string_value_kind { ____Placeholder_string_value_kind } string_value_kind ;






 scalar_t__ errno ;
 scalar_t__ isxdigit (char) ;
 int k_signed ;
 int k_string ;
 int k_unsigned ;
 int strcmp (char const*,char*) ;
 void* strtoll (char const*,char**,int) ;
 int strtoull (char const*,char**,int) ;

__attribute__((used)) static enum string_value_kind expr_parse_string(const char *str,
      enum symbol_type type,
      union string_value *val)
{
 char *tail;
 enum string_value_kind kind;

 errno = 0;
 switch (type) {
 case 131:
 case 128:
  val->s = !strcmp(str, "n") ? 0 :
    !strcmp(str, "m") ? 1 :
    !strcmp(str, "y") ? 2 : -1;
  return k_signed;
 case 129:
  val->s = strtoll(str, &tail, 10);
  kind = k_signed;
  break;
 case 130:
  val->u = strtoull(str, &tail, 16);
  kind = k_unsigned;
  break;
 default:
  val->s = strtoll(str, &tail, 0);
  kind = k_signed;
  break;
 }
 return !errno && !*tail && tail > str && isxdigit(tail[-1])
        ? kind : k_string;
}
