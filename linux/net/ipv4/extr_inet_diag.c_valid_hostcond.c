
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inet_diag_hostcond {int family; int prefix_len; } ;
struct inet_diag_bc_op {int dummy; } ;
struct in_addr {int dummy; } ;
struct in6_addr {int dummy; } ;






__attribute__((used)) static bool valid_hostcond(const struct inet_diag_bc_op *op, int len,
      int *min_len)
{
 struct inet_diag_hostcond *cond;
 int addr_len;


 *min_len += sizeof(struct inet_diag_hostcond);
 if (len < *min_len)
  return 0;
 cond = (struct inet_diag_hostcond *)(op + 1);


 switch (cond->family) {
 case 128:
  addr_len = 0;
  break;
 case 130:
  addr_len = sizeof(struct in_addr);
  break;
 case 129:
  addr_len = sizeof(struct in6_addr);
  break;
 default:
  return 0;
 }
 *min_len += addr_len;
 if (len < *min_len)
  return 0;


 if (cond->prefix_len > 8 * addr_len)
  return 0;

 return 1;
}
