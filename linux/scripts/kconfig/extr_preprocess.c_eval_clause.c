
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FUNCTION_MAX_ARGS ;
 char* env_expand (char*) ;
 char* expand_string_with_args (char*,int,char**) ;
 int free (char*) ;
 char* function_expand (char*,int,char**) ;
 int pperror (char*) ;
 unsigned long strtoul (char*,char**,int) ;
 char* variable_expand (char*,int,char**) ;
 char* xstrdup (char*) ;
 char* xstrndup (char const*,size_t) ;

__attribute__((used)) static char *eval_clause(const char *str, size_t len, int argc, char *argv[])
{
 char *tmp, *name, *res, *endptr, *prev, *p;
 int new_argc = 0;
 char *new_argv[FUNCTION_MAX_ARGS];
 int nest = 0;
 int i;
 unsigned long n;

 tmp = xstrndup(str, len);






 n = strtoul(tmp, &endptr, 10);
 if (!*endptr && n > 0 && n <= argc) {
  res = xstrdup(argv[n - 1]);
  goto free_tmp;
 }

 prev = p = tmp;
 while (*p) {
  if (nest == 0 && *p == ',') {
   *p = 0;
   if (new_argc >= FUNCTION_MAX_ARGS)
    pperror("too many function arguments");
   new_argv[new_argc++] = prev;
   prev = p + 1;
  } else if (*p == '(') {
   nest++;
  } else if (*p == ')') {
   nest--;
  }

  p++;
 }
 new_argv[new_argc++] = prev;







 name = expand_string_with_args(new_argv[0], argc, argv);
 new_argc--;
 for (i = 0; i < new_argc; i++)
  new_argv[i] = expand_string_with_args(new_argv[i + 1],
            argc, argv);


 res = variable_expand(name, new_argc, new_argv);
 if (res)
  goto free;


 res = function_expand(name, new_argc, new_argv);
 if (res)
  goto free;


 if (new_argc == 0) {
  res = env_expand(name);
  if (res)
   goto free;
 }

 res = xstrdup("");
free:
 for (i = 0; i < new_argc; i++)
  free(new_argv[i]);
 free(name);
free_tmp:
 free(tmp);

 return res;
}
