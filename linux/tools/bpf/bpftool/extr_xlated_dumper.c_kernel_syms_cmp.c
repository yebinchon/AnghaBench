
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kernel_sym {int address; } ;



__attribute__((used)) static int kernel_syms_cmp(const void *sym_a, const void *sym_b)
{
 return ((struct kernel_sym *)sym_a)->address -
        ((struct kernel_sym *)sym_b)->address;
}
