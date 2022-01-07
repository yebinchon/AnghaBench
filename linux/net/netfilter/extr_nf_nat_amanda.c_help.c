
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ u_int16_t ;
struct sk_buff {int dummy; } ;
struct TYPE_9__ {int port; } ;
struct TYPE_10__ {TYPE_3__ tcp; } ;
struct TYPE_11__ {TYPE_4__ u; } ;
struct TYPE_12__ {TYPE_5__ dst; } ;
struct TYPE_7__ {int port; } ;
struct TYPE_8__ {TYPE_1__ tcp; } ;
struct nf_conntrack_expect {int master; TYPE_6__ tuple; TYPE_2__ saved_proto; int expectfn; int dir; } ;
typedef enum ip_conntrack_info { ____Placeholder_ip_conntrack_info } ip_conntrack_info ;


 int EBUSY ;
 int IP_CT_DIR_ORIGINAL ;
 unsigned int NF_ACCEPT ;
 unsigned int NF_DROP ;
 int htons (scalar_t__) ;
 int nf_ct_expect_related (struct nf_conntrack_expect*,int ) ;
 int nf_ct_helper_log (struct sk_buff*,int ,char*) ;
 int nf_ct_unexpect_related (struct nf_conntrack_expect*) ;
 int nf_nat_follow_master ;
 int nf_nat_mangle_udp_packet (struct sk_buff*,int ,int,unsigned int,unsigned int,unsigned int,char*,int ) ;
 scalar_t__ ntohs (int ) ;
 int sprintf (char*,char*,scalar_t__) ;
 int strlen (char*) ;

__attribute__((used)) static unsigned int help(struct sk_buff *skb,
    enum ip_conntrack_info ctinfo,
    unsigned int protoff,
    unsigned int matchoff,
    unsigned int matchlen,
    struct nf_conntrack_expect *exp)
{
 char buffer[sizeof("65535")];
 u_int16_t port;


 exp->saved_proto.tcp.port = exp->tuple.dst.u.tcp.port;
 exp->dir = IP_CT_DIR_ORIGINAL;



 exp->expectfn = nf_nat_follow_master;


 for (port = ntohs(exp->saved_proto.tcp.port); port != 0; port++) {
  int res;

  exp->tuple.dst.u.tcp.port = htons(port);
  res = nf_ct_expect_related(exp, 0);
  if (res == 0)
   break;
  else if (res != -EBUSY) {
   port = 0;
   break;
  }
 }

 if (port == 0) {
  nf_ct_helper_log(skb, exp->master, "all ports in use");
  return NF_DROP;
 }

 sprintf(buffer, "%u", port);
 if (!nf_nat_mangle_udp_packet(skb, exp->master, ctinfo,
          protoff, matchoff, matchlen,
          buffer, strlen(buffer))) {
  nf_ct_helper_log(skb, exp->master, "cannot mangle packet");
  nf_ct_unexpect_related(exp);
  return NF_DROP;
 }
 return NF_ACCEPT;
}
