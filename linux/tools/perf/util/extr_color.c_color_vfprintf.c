
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;
typedef int FILE ;


 int __color_vfprintf (int *,char const*,char const*,int ) ;

int color_vfprintf(FILE *fp, const char *color, const char *fmt, va_list args)
{
 return __color_vfprintf(fp, color, fmt, args);
}
