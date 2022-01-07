
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int kernel_symbol_name (void const*) ;
 int strcmp (void const*,int ) ;

__attribute__((used)) static int cmp_name(const void *name, const void *sym)
{
 return strcmp(name, kernel_symbol_name(sym));
}
