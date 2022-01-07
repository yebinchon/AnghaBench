
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;


 int __color_vsnprintf (char*,size_t,char const*,char const*,int ,int *) ;

int color_vsnprintf(char *bf, size_t size, const char *color,
      const char *fmt, va_list args)
{
 return __color_vsnprintf(bf, size, color, fmt, args, ((void*)0));
}
