
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int argv_free (char**) ;
 char** calloc (int,int) ;
 int count_argc (char const*) ;
 char* skip_arg (char const*) ;
 char* skip_spaces (char const*) ;
 char* strndup (char const*,int) ;

char **argv_split(const char *str, int *argcp)
{
 int argc = count_argc(str);
 char **argv = calloc(argc + 1, sizeof(*argv));
 char **argvp;

 if (argv == ((void*)0))
  goto out;

 if (argcp)
  *argcp = argc;

 argvp = argv;

 while (*str) {
  str = skip_spaces(str);

  if (*str) {
   const char *p = str;
   char *t;

   str = skip_arg(str);

   t = strndup(p, str-p);
   if (t == ((void*)0))
    goto fail;
   *argvp++ = t;
  }
 }
 *argvp = ((void*)0);

out:
 return argv;

fail:
 argv_free(argv);
 return ((void*)0);
}
