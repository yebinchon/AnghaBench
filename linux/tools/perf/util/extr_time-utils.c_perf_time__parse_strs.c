
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_time_interval {scalar_t__ end; scalar_t__ start; } ;


 int BUG_ON (int) ;
 int EINVAL ;
 int ENOMEM ;
 int free (char*) ;
 int isspace (char) ;
 int perf_time__parse_str (struct perf_time_interval*,char*) ;
 char* skip_spaces (scalar_t__) ;
 scalar_t__ strchr (char*,char) ;
 char* strdup (char const*) ;

__attribute__((used)) static int perf_time__parse_strs(struct perf_time_interval *ptime,
     const char *ostr, int size)
{
 const char *cp;
 char *str, *arg, *p;
 int i, num = 0, rc = 0;


 for (cp = ostr; *cp; cp++)
  num += !!(*cp == ',');

 if (!num)
  return -EINVAL;

 BUG_ON(num > size);

 str = strdup(ostr);
 if (!str)
  return -ENOMEM;


 for (i = 0, p = str; i < num - 1; i++) {
  arg = p;

  p = skip_spaces(strchr(p, ',') + 1);

  while (*p && !isspace(*p)) {
   if (*p++ == ',') {
    rc = -EINVAL;
    goto out;
   }
  }

  if (*p)
   *p++ = 0;
  rc = perf_time__parse_str(ptime + i, arg);
  if (rc < 0)
   goto out;
 }


 rc = perf_time__parse_str(ptime + i, p);
 if (rc < 0)
  goto out;


 for (i = 0; i < num - 1; i++) {
  if (ptime[i].end >= ptime[i + 1].start) {
   rc = -EINVAL;
   goto out;
  }
 }

 rc = num;
out:
 free(str);

 return rc;
}
