
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int val ;
typedef int u8 ;
struct syscall_arg {unsigned char* args; } ;


 int memcpy (unsigned long*,unsigned char*,int) ;

unsigned long syscall_arg__val(struct syscall_arg *arg, u8 idx)
{
 unsigned long val;
 unsigned char *p = arg->args + sizeof(unsigned long) * idx;

 memcpy(&val, p, sizeof(val));
 return val;
}
