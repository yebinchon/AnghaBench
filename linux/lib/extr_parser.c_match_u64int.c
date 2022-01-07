
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int substring_t ;


 int ENOMEM ;
 int kfree (char*) ;
 int kstrtoull (char*,int,int *) ;
 char* match_strdup (int *) ;

__attribute__((used)) static int match_u64int(substring_t *s, u64 *result, int base)
{
 char *buf;
 int ret;
 u64 val;

 buf = match_strdup(s);
 if (!buf)
  return -ENOMEM;

 ret = kstrtoull(buf, base, &val);
 if (!ret)
  *result = val;
 kfree(buf);
 return ret;
}
