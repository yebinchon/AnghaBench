
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long IUCV_QUERY ;

__attribute__((used)) static int __iucv_query_maxconn(void *param, unsigned long *max_pathid)
{
 register unsigned long reg0 asm ("0");
 register unsigned long reg1 asm ("1");
 int ccode;

 reg0 = IUCV_QUERY;
 reg1 = (unsigned long) param;
 asm volatile (
  "	.long	0xb2f01000\n"
  "	ipm	%0\n"
  "	srl	%0,28\n"
  : "=d" (ccode), "+d" (reg0), "+d" (reg1) : : "cc");
 *max_pathid = reg1;
 return ccode;
}
