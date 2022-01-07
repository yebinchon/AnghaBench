
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENOMEM ;
 int GFP_KERNEL ;
 char* kasprintf (int ,char*,char*,char const*) ;
 int kfree (char*) ;
 char* kstrdup (char const*,int ) ;
 scalar_t__ match_last_lsm (char*,char const*) ;

__attribute__((used)) static int lsm_append(const char *new, char **result)
{
 char *cp;

 if (*result == ((void*)0)) {
  *result = kstrdup(new, GFP_KERNEL);
  if (*result == ((void*)0))
   return -ENOMEM;
 } else {

  if (match_last_lsm(*result, new))
   return 0;
  cp = kasprintf(GFP_KERNEL, "%s,%s", *result, new);
  if (cp == ((void*)0))
   return -ENOMEM;
  kfree(*result);
  *result = cp;
 }
 return 0;
}
