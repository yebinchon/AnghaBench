
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENOMEM ;
 int LC_NUMERIC ;
 int free (char*) ;
 char* setlocale (int ,char*) ;
 char* strdup (char*) ;
 double strtod (char const*,char**) ;

int perf_pmu__convert_scale(const char *scale, char **end, double *sval)
{
 char *lc;
 int ret = 0;




 lc = setlocale(LC_NUMERIC, ((void*)0));






 lc = strdup(lc);
 if (!lc) {
  ret = -ENOMEM;
  goto out;
 }






 setlocale(LC_NUMERIC, "C");

 *sval = strtod(scale, end);

out:

 setlocale(LC_NUMERIC, lc);
 free(lc);
 return ret;
}
