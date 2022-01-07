
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 int pr_err (char*,char*,char const*,char*) ;

__attribute__((used)) static int check_set(const char **dest, char *src, char *name)
{
 int rc = 0;

 if (*dest) {
  rc = -EINVAL;
  pr_err("match-spec:%s val:%s overridden by %s\n",
         name, *dest, src);
 }
 *dest = src;
 return rc;
}
