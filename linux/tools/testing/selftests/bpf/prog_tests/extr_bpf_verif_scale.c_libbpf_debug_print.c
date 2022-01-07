
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;
typedef enum libbpf_print_level { ____Placeholder_libbpf_print_level } libbpf_print_level ;


 int LIBBPF_DEBUG ;
 int strstr (char const*,char*) ;
 int vprintf (char const*,int ) ;

__attribute__((used)) static int libbpf_debug_print(enum libbpf_print_level level,
         const char *format, va_list args)
{
 if (level != LIBBPF_DEBUG) {
  vprintf(format, args);
  return 0;
 }

 if (!strstr(format, "verifier log"))
  return 0;
 vprintf("%s", args);
 return 0;
}
