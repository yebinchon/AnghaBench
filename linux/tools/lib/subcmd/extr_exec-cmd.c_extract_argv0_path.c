
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ argv0_path ;
 int is_dir_sep (char const) ;
 int strlen (char const*) ;
 scalar_t__ strndup (char const*,int) ;

const char *extract_argv0_path(const char *argv0)
{
 const char *slash;

 if (!argv0 || !*argv0)
  return ((void*)0);
 slash = argv0 + strlen(argv0);

 while (argv0 <= slash && !is_dir_sep(*slash))
  slash--;

 if (slash >= argv0) {
  argv0_path = strndup(argv0, slash - argv0);
  return argv0_path ? slash + 1 : ((void*)0);
 }

 return argv0;
}
