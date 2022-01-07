
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int color_snprintf (char*,size_t,char const*,char const*,double) ;
 char* get_percent_color (double) ;

int value_color_snprintf(char *bf, size_t size, const char *fmt, double value)
{
 const char *color = get_percent_color(value);
 return color_snprintf(bf, size, color, fmt, value);
}
