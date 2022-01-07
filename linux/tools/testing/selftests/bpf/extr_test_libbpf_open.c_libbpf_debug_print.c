
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;
typedef enum libbpf_print_level { ____Placeholder_libbpf_print_level } libbpf_print_level ;


 int LIBBPF_DEBUG ;
 int debug ;
 int fprintf (int ,char*,int) ;
 int stderr ;
 int vfprintf (int ,char const*,int ) ;

__attribute__((used)) static int libbpf_debug_print(enum libbpf_print_level level,
         const char *fmt, va_list args)
{
 if (level == LIBBPF_DEBUG && !debug)
  return 0;

 fprintf(stderr, "[%d] ", level);
 return vfprintf(stderr, fmt, args);
}
