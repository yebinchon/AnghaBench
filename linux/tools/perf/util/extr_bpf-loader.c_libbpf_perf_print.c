
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;
typedef enum libbpf_print_level { ____Placeholder_libbpf_print_level } libbpf_print_level ;


 int pr_fmt (char const*) ;
 int veprintf (int,int ,int ,int ) ;
 int verbose ;

__attribute__((used)) static int libbpf_perf_print(enum libbpf_print_level level __attribute__((unused)),
         const char *fmt, va_list args)
{
 return veprintf(1, verbose, pr_fmt(fmt), args);
}
