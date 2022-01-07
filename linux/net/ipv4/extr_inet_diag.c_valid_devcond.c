
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct inet_diag_bc_op {int dummy; } ;



__attribute__((used)) static bool valid_devcond(const struct inet_diag_bc_op *op, int len,
     int *min_len)
{

 *min_len += sizeof(u32);
 if (len < *min_len)
  return 0;

 return 1;
}
