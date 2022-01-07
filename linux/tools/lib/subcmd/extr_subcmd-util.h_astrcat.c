
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int asprintf (char**,char*,char*,char const*) ;
 int die (char*) ;
 int free (char*) ;

__attribute__((used)) static inline void astrcat(char **out, const char *add)
{
 char *tmp = *out;

 if (asprintf(out, "%s%s", tmp ?: "", add) == -1)
  die("asprintf failed");

 free(tmp);
}
