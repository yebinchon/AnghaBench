
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* source_prefix; } ;





 int ENOMEM ;

 int R_OK ;
 scalar_t__ access (char const*,int ) ;
 int errno ;
 char* malloc (scalar_t__) ;
 int sprintf (char*,char*,char const*,char const*) ;
 char* strchr (char const*,char) ;
 char* strdup (char const*) ;
 scalar_t__ strlen (char const*) ;
 TYPE_1__ symbol_conf ;
 int zfree (char**) ;

int get_real_path(const char *raw_path, const char *comp_dir,
    char **new_path)
{
 const char *prefix = symbol_conf.source_prefix;

 if (!prefix) {
  if (raw_path[0] != '/' && comp_dir)

   prefix = comp_dir;
  else {
   if (access(raw_path, R_OK) == 0) {
    *new_path = strdup(raw_path);
    return *new_path ? 0 : -ENOMEM;
   } else
    return -errno;
  }
 }

 *new_path = malloc((strlen(prefix) + strlen(raw_path) + 2));
 if (!*new_path)
  return -ENOMEM;

 for (;;) {
  sprintf(*new_path, "%s/%s", prefix, raw_path);

  if (access(*new_path, R_OK) == 0)
   return 0;

  if (!symbol_conf.source_prefix) {

   zfree(new_path);
   return -errno;
  }

  switch (errno) {
  case 130:
  case 129:
  case 128:
  case 131:
   raw_path = strchr(++raw_path, '/');
   if (!raw_path) {
    zfree(new_path);
    return -129;
   }
   continue;

  default:
   zfree(new_path);
   return -errno;
  }
 }
}
