
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union iucv_param {int dummy; } iucv_param ;



__attribute__((used)) static inline int __iucv_call_b2f0(int command, union iucv_param *parm)
{
 register unsigned long reg0 asm ("0");
 register unsigned long reg1 asm ("1");
 int ccode;

 reg0 = command;
 reg1 = (unsigned long)parm;
 asm volatile(
  "	.long 0xb2f01000\n"
  "	ipm	%0\n"
  "	srl	%0,28\n"
  : "=d" (ccode), "=m" (*parm), "+d" (reg0), "+a" (reg1)
  : "m" (*parm) : "cc");
 return ccode;
}
