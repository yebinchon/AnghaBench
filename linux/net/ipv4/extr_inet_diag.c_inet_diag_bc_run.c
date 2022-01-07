
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nlattr {int dummy; } ;
struct inet_diag_markcond {int mask; int mark; } ;
struct inet_diag_hostcond {int port; int prefix_len; int addr; int family; } ;
struct inet_diag_entry {int sport; int dport; int userlocks; int mark; int ifindex; int family; int * daddr; int * saddr; } ;
struct inet_diag_bc_op {int code; int no; scalar_t__ yes; } ;
typedef int __be32 ;


 int AF_INET ;
 int AF_INET6 ;
 int AF_UNSPEC ;
 int SOCK_BINDPORT_LOCK ;
 int bitstring_match (int const*,int ,int ) ;
 int const htonl (int) ;
 void* nla_data (struct nlattr const*) ;
 int nla_len (struct nlattr const*) ;

__attribute__((used)) static int inet_diag_bc_run(const struct nlattr *_bc,
       const struct inet_diag_entry *entry)
{
 const void *bc = nla_data(_bc);
 int len = nla_len(_bc);

 while (len > 0) {
  int yes = 1;
  const struct inet_diag_bc_op *op = bc;

  switch (op->code) {
  case 132:
   break;
  case 134:
   yes = 0;
   break;
  case 130:
   yes = entry->sport == op[1].no;
   break;
  case 129:
   yes = entry->sport >= op[1].no;
   break;
  case 128:
   yes = entry->sport <= op[1].no;
   break;
  case 137:
   yes = entry->dport == op[1].no;
   break;
  case 136:
   yes = entry->dport >= op[1].no;
   break;
  case 135:
   yes = entry->dport <= op[1].no;
   break;
  case 140:
   yes = !(entry->userlocks & SOCK_BINDPORT_LOCK);
   break;
  case 131:
  case 138: {
   const struct inet_diag_hostcond *cond;
   const __be32 *addr;

   cond = (const struct inet_diag_hostcond *)(op + 1);
   if (cond->port != -1 &&
       cond->port != (op->code == 131 ?
          entry->sport : entry->dport)) {
    yes = 0;
    break;
   }

   if (op->code == 131)
    addr = entry->saddr;
   else
    addr = entry->daddr;

   if (cond->family != AF_UNSPEC &&
       cond->family != entry->family) {
    if (entry->family == AF_INET6 &&
        cond->family == AF_INET) {
     if (addr[0] == 0 && addr[1] == 0 &&
         addr[2] == htonl(0xffff) &&
         bitstring_match(addr + 3,
           cond->addr,
           cond->prefix_len))
      break;
    }
    yes = 0;
    break;
   }

   if (cond->prefix_len == 0)
    break;
   if (bitstring_match(addr, cond->addr,
         cond->prefix_len))
    break;
   yes = 0;
   break;
  }
  case 139: {
   u32 ifindex;

   ifindex = *((const u32 *)(op + 1));
   if (ifindex != entry->ifindex)
    yes = 0;
   break;
  }
  case 133: {
   struct inet_diag_markcond *cond;

   cond = (struct inet_diag_markcond *)(op + 1);
   if ((entry->mark & cond->mask) != cond->mark)
    yes = 0;
   break;
  }
  }

  if (yes) {
   len -= op->yes;
   bc += op->yes;
  } else {
   len -= op->no;
   bc += op->no;
  }
 }
 return len == 0;
}
