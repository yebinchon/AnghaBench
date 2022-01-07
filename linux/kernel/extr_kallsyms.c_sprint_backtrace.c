
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __sprint_symbol (char*,unsigned long,int,int) ;

int sprint_backtrace(char *buffer, unsigned long address)
{
 return __sprint_symbol(buffer, address, -1, 1);
}
