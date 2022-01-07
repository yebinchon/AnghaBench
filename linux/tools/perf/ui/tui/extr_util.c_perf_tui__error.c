
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;


 int __ui__warning (char*,char const*,int ) ;

__attribute__((used)) static int perf_tui__error(const char *format, va_list args)
{
 return __ui__warning("Error:", format, args);
}
