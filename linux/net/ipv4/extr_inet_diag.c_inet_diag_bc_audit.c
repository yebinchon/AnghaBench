
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct nlattr {int dummy; } ;
struct inet_diag_bc_op {int code; int no; int yes; } ;


 int CAP_NET_ADMIN ;
 int EINVAL ;
 int EPERM ;
 int netlink_net_capable (struct sk_buff const*,int ) ;
 void* nla_data (struct nlattr const*) ;
 int nla_len (struct nlattr const*) ;
 int valid_cc (void const*,int,int) ;
 int valid_devcond (void const*,int,int*) ;
 int valid_hostcond (void const*,int,int*) ;
 int valid_markcond (void const*,int,int*) ;
 int valid_port_comparison (void const*,int,int*) ;

__attribute__((used)) static int inet_diag_bc_audit(const struct nlattr *attr,
         const struct sk_buff *skb)
{
 bool net_admin = netlink_net_capable(skb, CAP_NET_ADMIN);
 const void *bytecode, *bc;
 int bytecode_len, len;

 if (!attr || nla_len(attr) < sizeof(struct inet_diag_bc_op))
  return -EINVAL;

 bytecode = bc = nla_data(attr);
 len = bytecode_len = nla_len(attr);

 while (len > 0) {
  int min_len = sizeof(struct inet_diag_bc_op);
  const struct inet_diag_bc_op *op = bc;

  switch (op->code) {
  case 131:
  case 138:
   if (!valid_hostcond(bc, len, &min_len))
    return -EINVAL;
   break;
  case 139:
   if (!valid_devcond(bc, len, &min_len))
    return -EINVAL;
   break;
  case 130:
  case 129:
  case 128:
  case 137:
  case 136:
  case 135:
   if (!valid_port_comparison(bc, len, &min_len))
    return -EINVAL;
   break;
  case 133:
   if (!net_admin)
    return -EPERM;
   if (!valid_markcond(bc, len, &min_len))
    return -EINVAL;
   break;
  case 140:
  case 134:
  case 132:
   break;
  default:
   return -EINVAL;
  }

  if (op->code != 132) {
   if (op->no < min_len || op->no > len + 4 || op->no & 3)
    return -EINVAL;
   if (op->no < len &&
       !valid_cc(bytecode, bytecode_len, len - op->no))
    return -EINVAL;
  }

  if (op->yes < min_len || op->yes > len + 4 || op->yes & 3)
   return -EINVAL;
  bc += op->yes;
  len -= op->yes;
 }
 return len == 0 ? 0 : -EINVAL;
}
