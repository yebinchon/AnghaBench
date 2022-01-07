
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inet_diag_bc_op {int dummy; } ;



__attribute__((used)) static bool valid_port_comparison(const struct inet_diag_bc_op *op,
      int len, int *min_len)
{

 *min_len += sizeof(struct inet_diag_bc_op);
 if (len < *min_len)
  return 0;
 return 1;
}
