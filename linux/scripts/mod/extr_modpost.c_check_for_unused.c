
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum export { ____Placeholder_export } export ;




 scalar_t__ is_vmlinux (char const*) ;
 int warn (char*,char const*,char const*,char const*) ;

__attribute__((used)) static void check_for_unused(enum export exp, const char *m, const char *s)
{
 const char *e = is_vmlinux(m) ?"":".ko";

 switch (exp) {
 case 129:
 case 128:
  warn("modpost: module %s%s "
        "uses symbol '%s' marked UNUSED\n", m, e, s);
  break;
 default:

  break;
 }
}
