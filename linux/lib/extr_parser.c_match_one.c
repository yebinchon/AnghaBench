
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* from; char* to; } ;
typedef TYPE_1__ substring_t ;


 int MAX_OPT_ARGS ;
 scalar_t__ isdigit (char const) ;
 int simple_strtol (char*,char**,int ) ;
 int simple_strtoul (char const*,char**,int) ;
 char* strchr (char const*,char) ;
 scalar_t__ strcmp (char const*,char*) ;
 size_t strlen (char*) ;
 scalar_t__ strncmp (char const*,char*,int) ;

__attribute__((used)) static int match_one(char *s, const char *p, substring_t args[])
{
 char *meta;
 int argc = 0;

 if (!p)
  return 1;

 while(1) {
  int len = -1;
  meta = strchr(p, '%');
  if (!meta)
   return strcmp(p, s) == 0;

  if (strncmp(p, s, meta-p))
   return 0;

  s += meta - p;
  p = meta + 1;

  if (isdigit(*p))
   len = simple_strtoul(p, (char **) &p, 10);
  else if (*p == '%') {
   if (*s++ != '%')
    return 0;
   p++;
   continue;
  }

  if (argc >= MAX_OPT_ARGS)
   return 0;

  args[argc].from = s;
  switch (*p++) {
  case 's': {
   size_t str_len = strlen(s);

   if (str_len == 0)
    return 0;
   if (len == -1 || len > str_len)
    len = str_len;
   args[argc].to = s + len;
   break;
  }
  case 'd':
   simple_strtol(s, &args[argc].to, 0);
   goto num;
  case 'u':
   simple_strtoul(s, &args[argc].to, 0);
   goto num;
  case 'o':
   simple_strtoul(s, &args[argc].to, 8);
   goto num;
  case 'x':
   simple_strtoul(s, &args[argc].to, 16);
  num:
   if (args[argc].to == args[argc].from)
    return 0;
   break;
  default:
   return 0;
  }
  s = args[argc].to;
  argc++;
 }
}
