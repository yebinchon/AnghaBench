
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct perf_time_interval {int dummy; } ;


 int ENOMEM ;
 int free (char*) ;
 char* malloc (int) ;
 int memcpy (char*,char const*,int) ;
 int percent_slash_split (char*,struct perf_time_interval*,int ,int ) ;
 int strcpy (char*,char*) ;
 int strlen (char const*) ;

__attribute__((used)) static int one_percent_convert(struct perf_time_interval *ptime_buf,
          const char *ostr, u64 start, u64 end, char *c)
{
 char *str;
 int len = strlen(ostr), ret;





 if (ostr + len - 1 != c)
  return -1;




 str = malloc(len + 3);
 if (str == ((void*)0))
  return -ENOMEM;

 memcpy(str, ostr, len);
 strcpy(str + len, "/1");

 ret = percent_slash_split(str, ptime_buf, start, end);
 if (ret == 0)
  ret = 1;

 free(str);
 return ret;
}
