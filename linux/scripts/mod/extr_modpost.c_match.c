
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* NOFAIL (int ) ;
 int free (char*) ;
 scalar_t__ strcmp (char const*,char const*) ;
 int strlen (char const*) ;
 scalar_t__ strncmp (char const*,char const*,int) ;
 int strndup (char const*,int) ;
 scalar_t__ strrcmp (char const*,char const*) ;
 char* strstr (char const*,char*) ;

__attribute__((used)) static int match(const char *sym, const char * const pat[])
{
 const char *p;
 while (*pat) {
  p = *pat++;
  const char *endp = p + strlen(p) - 1;


  if (*p == '*' && *endp == '*') {
   char *bare = NOFAIL(strndup(p + 1, strlen(p) - 2));
   char *here = strstr(sym, bare);

   free(bare);
   if (here != ((void*)0))
    return 1;
  }

  else if (*p == '*') {
   if (strrcmp(sym, p + 1) == 0)
    return 1;
  }

  else if (*endp == '*') {
   if (strncmp(sym, p, strlen(p) - 1) == 0)
    return 1;
  }

  else {
   if (strcmp(p, sym) == 0)
    return 1;
  }
 }

 return 0;
}
