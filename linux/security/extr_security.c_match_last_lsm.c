
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ WARN_ON (int) ;
 int strcmp (char const*,char const*) ;
 char* strrchr (char const*,char) ;

__attribute__((used)) static bool match_last_lsm(const char *list, const char *lsm)
{
 const char *last;

 if (WARN_ON(!list || !lsm))
  return 0;
 last = strrchr(list, ',');
 if (last)

  last++;
 else
  last = list;
 return !strcmp(last, lsm);
}
