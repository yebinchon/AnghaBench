
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ip6_tnl_parm {int name; int proto; int link; int flowinfo; int encap_limit; int hop_limit; int flags; int raddr; int laddr; } ;
struct __ip6_tnl_parm {int name; int proto; int link; int flowinfo; int encap_limit; int hop_limit; int flags; int raddr; int laddr; } ;


 int memcpy (int ,int ,int) ;

__attribute__((used)) static void
ip6_tnl_parm_to_user(struct ip6_tnl_parm *u, const struct __ip6_tnl_parm *p)
{
 u->laddr = p->laddr;
 u->raddr = p->raddr;
 u->flags = p->flags;
 u->hop_limit = p->hop_limit;
 u->encap_limit = p->encap_limit;
 u->flowinfo = p->flowinfo;
 u->link = p->link;
 u->proto = p->proto;
 memcpy(u->name, p->name, sizeof(u->name));
}
