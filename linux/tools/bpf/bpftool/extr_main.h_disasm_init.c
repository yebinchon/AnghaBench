
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int p_err (char*) ;

__attribute__((used)) static inline int disasm_init(void)
{
 p_err("No libbfd support");
 return -1;
}
