
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inet_diag_bc_op {int yes; } ;



__attribute__((used)) static int valid_cc(const void *bc, int len, int cc)
{
 while (len >= 0) {
  const struct inet_diag_bc_op *op = bc;

  if (cc > len)
   return 0;
  if (cc == len)
   return 1;
  if (op->yes < 4 || op->yes & 3)
   return 0;
  len -= op->yes;
  bc += op->yes;
 }
 return 0;
}
