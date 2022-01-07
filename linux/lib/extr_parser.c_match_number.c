
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int substring_t ;


 int EINVAL ;
 int ENOMEM ;
 int ERANGE ;
 scalar_t__ INT_MAX ;
 scalar_t__ INT_MIN ;
 int kfree (char*) ;
 char* match_strdup (int *) ;
 long simple_strtol (char*,char**,int) ;

__attribute__((used)) static int match_number(substring_t *s, int *result, int base)
{
 char *endp;
 char *buf;
 int ret;
 long val;

 buf = match_strdup(s);
 if (!buf)
  return -ENOMEM;

 ret = 0;
 val = simple_strtol(buf, &endp, base);
 if (endp == buf)
  ret = -EINVAL;
 else if (val < (long)INT_MIN || val > (long)INT_MAX)
  ret = -ERANGE;
 else
  *result = (int) val;
 kfree(buf);
 return ret;
}
