
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct nf_conntrack_helper {int dummy; } ;
struct nf_conn {TYPE_2__* tuplehash; } ;
struct TYPE_3__ {int auto_assign_helper_warned; int sysctl_auto_assign_helper; } ;
struct net {TYPE_1__ ct; } ;
struct TYPE_4__ {int tuple; } ;


 size_t IP_CT_DIR_REPLY ;
 struct nf_conntrack_helper* __nf_ct_helper_find (int *) ;
 int pr_info (char*) ;

__attribute__((used)) static struct nf_conntrack_helper *
nf_ct_lookup_helper(struct nf_conn *ct, struct net *net)
{
 if (!net->ct.sysctl_auto_assign_helper) {
  if (net->ct.auto_assign_helper_warned)
   return ((void*)0);
  if (!__nf_ct_helper_find(&ct->tuplehash[IP_CT_DIR_REPLY].tuple))
   return ((void*)0);
  pr_info("nf_conntrack: default automatic helper assignment "
   "has been turned off for security reasons and CT-based "
   " firewall rule not found. Use the iptables CT target "
   "to attach helpers instead.\n");
  net->ct.auto_assign_helper_warned = 1;
  return ((void*)0);
 }

 return __nf_ct_helper_find(&ct->tuplehash[IP_CT_DIR_REPLY].tuple);
}
