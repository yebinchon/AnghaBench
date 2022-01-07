
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int demangle_kernel; int demangle; } ;


 TYPE_1__ symbol_conf ;

__attribute__((used)) static bool want_demangle(bool is_kernel_sym)
{
 return is_kernel_sym ? symbol_conf.demangle_kernel : symbol_conf.demangle;
}
