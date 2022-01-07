
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int scnprintf (char*,int,char*,char*,char const*,float) ;

__attribute__((used)) static int count_float_printf(int idx, const char *str, float value,
         char *bf, int bfsize, float threshold)
{
 int printed;

 if (threshold != 0.0 && value < threshold)
  return 0;

 printed = scnprintf(bf, bfsize, "%s%s:%.1f%%", (idx) ? " " : " (", str, value);

 return printed;
}
