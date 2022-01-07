
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;
typedef enum libperf_print_level { ____Placeholder_libperf_print_level } libperf_print_level ;


 int stderr ;
 int vfprintf (int ,char const*,int ) ;

__attribute__((used)) static int __base_pr(enum libperf_print_level level, const char *format,
       va_list args)
{
 return vfprintf(stderr, format, args);
}
