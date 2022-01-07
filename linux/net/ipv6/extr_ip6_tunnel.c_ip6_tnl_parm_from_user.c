
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ip6_tnl_parm {int name; int proto; int link; int flowinfo; int encap_limit; int hop_limit; int flags; int raddr; int laddr; } ;
struct __ip6_tnl_parm {int name; int proto; int link; int flowinfo; int encap_limit; int hop_limit; int flags; int raddr; int laddr; } ;


 int memcpy (int ,int ,int) ;

__attribute__((used)) static void
ip6_tnl_parm_from_user(struct __ip6_tnl_parm *p, const struct ip6_tnl_parm *u)
{
 p->laddr = u->laddr;
 p->raddr = u->raddr;
 p->flags = u->flags;
 p->hop_limit = u->hop_limit;
 p->encap_limit = u->encap_limit;
 p->flowinfo = u->flowinfo;
 p->link = u->link;
 p->proto = u->proto;
 memcpy(p->name, u->name, sizeof(u->name));
}
