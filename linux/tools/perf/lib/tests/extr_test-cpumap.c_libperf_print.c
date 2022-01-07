
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;
typedef enum libperf_print_level { ____Placeholder_libperf_print_level } libperf_print_level ;


 int stderr ;
 int vfprintf (int ,char const*,int ) ;

__attribute__((used)) static int libperf_print(enum libperf_print_level level,
    const char *fmt, va_list ap)
{
 return vfprintf(stderr, fmt, ap);
}
