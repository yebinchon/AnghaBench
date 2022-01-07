
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum export { ____Placeholder_export } export ;
 int fatal (char*,char const*,char const*,char const*) ;
 scalar_t__ is_vmlinux (char const*) ;
 int warn (char*,char const*,char const*,char const*) ;

__attribute__((used)) static void check_for_gpl_usage(enum export exp, const char *m, const char *s)
{
 const char *e = is_vmlinux(m) ?"":".ko";

 switch (exp) {
 case 133:
  fatal("modpost: GPL-incompatible module %s%s "
        "uses GPL-only symbol '%s'\n", m, e, s);
  break;
 case 128:
  fatal("modpost: GPL-incompatible module %s%s "
        "uses GPL-only symbol marked UNUSED '%s'\n", m, e, s);
  break;
 case 132:
  warn("modpost: GPL-incompatible module %s%s "
        "uses future GPL-only symbol '%s'\n", m, e, s);
  break;
 case 131:
 case 129:
 case 130:

  break;
 }
}
