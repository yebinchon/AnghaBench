
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;
typedef enum libperf_print_level { ____Placeholder_libperf_print_level } libperf_print_level ;


 int eprintf (int,int ,char const*,int ) ;
 int verbose ;

__attribute__((used)) static int libperf_print(enum libperf_print_level level,
    const char *fmt, va_list ap)
{
 return eprintf(level, verbose, fmt, ap);
}
