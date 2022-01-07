
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int bfd_init () ;

int disasm_init(void)
{
 bfd_init();
 return 0;
}
