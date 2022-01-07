
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int va_list ;
typedef enum libbpf_print_level { ____Placeholder_libbpf_print_level } libbpf_print_level ;
struct TYPE_2__ {int very_verbose; } ;


 int LIBBPF_DEBUG ;
 TYPE_1__ env ;
 int vprintf (char const*,int ) ;

__attribute__((used)) static int libbpf_print_fn(enum libbpf_print_level level,
      const char *format, va_list args)
{
 if (!env.very_verbose && level == LIBBPF_DEBUG)
  return 0;
 vprintf(format, args);
 return 0;
}
