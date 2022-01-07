
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_9__ ;
typedef struct TYPE_17__ TYPE_8__ ;
typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


union nf_inet_addr {int ip; } ;
typedef scalar_t__ u_int16_t ;
struct sk_buff {int dummy; } ;
struct TYPE_15__ {int port; } ;
struct TYPE_16__ {TYPE_6__ tcp; } ;
struct TYPE_17__ {TYPE_7__ u; } ;
struct TYPE_18__ {TYPE_8__ dst; } ;
struct TYPE_13__ {int port; } ;
struct TYPE_14__ {TYPE_4__ tcp; } ;
struct nf_conntrack_expect {size_t dir; TYPE_9__ tuple; TYPE_5__ saved_proto; int expectfn; struct nf_conn* master; } ;
struct nf_conn {TYPE_3__* tuplehash; } ;
typedef enum ip_conntrack_info { ____Placeholder_ip_conntrack_info } ip_conntrack_info ;
typedef int buffer ;
struct TYPE_10__ {union nf_inet_addr u3; } ;
struct TYPE_11__ {TYPE_1__ dst; } ;
struct TYPE_12__ {TYPE_2__ tuple; } ;


 int EBUSY ;
 size_t IP_CT_DIR_REPLY ;
 unsigned int NF_ACCEPT ;
 unsigned int NF_DROP ;
 int htons (scalar_t__) ;
 int nf_ct_expect_related (struct nf_conntrack_expect*,int ) ;
 int nf_ct_helper_log (struct sk_buff*,struct nf_conn*,char*) ;
 int nf_ct_unexpect_related (struct nf_conntrack_expect*) ;
 int nf_nat_follow_master ;
 int nf_nat_mangle_tcp_packet (struct sk_buff*,struct nf_conn*,int,unsigned int,unsigned int,unsigned int,char*,int ) ;
 int ntohl (int ) ;
 scalar_t__ ntohs (int ) ;
 int pr_debug (char*,char*,int *,scalar_t__) ;
 int snprintf (char*,int,char*,int,scalar_t__) ;
 int strlen (char*) ;

__attribute__((used)) static unsigned int help(struct sk_buff *skb,
    enum ip_conntrack_info ctinfo,
    unsigned int protoff,
    unsigned int matchoff,
    unsigned int matchlen,
    struct nf_conntrack_expect *exp)
{
 char buffer[sizeof("4294967296 65635")];
 struct nf_conn *ct = exp->master;
 union nf_inet_addr newaddr;
 u_int16_t port;


 newaddr = ct->tuplehash[IP_CT_DIR_REPLY].tuple.dst.u3;

 exp->saved_proto.tcp.port = exp->tuple.dst.u.tcp.port;
 exp->dir = IP_CT_DIR_REPLY;
 exp->expectfn = nf_nat_follow_master;


 for (port = ntohs(exp->saved_proto.tcp.port); port != 0; port++) {
  int ret;

  exp->tuple.dst.u.tcp.port = htons(port);
  ret = nf_ct_expect_related(exp, 0);
  if (ret == 0)
   break;
  else if (ret != -EBUSY) {
   port = 0;
   break;
  }
 }

 if (port == 0) {
  nf_ct_helper_log(skb, ct, "all ports in use");
  return NF_DROP;
 }
 snprintf(buffer, sizeof(buffer), "%u %u", ntohl(newaddr.ip), port);
 pr_debug("inserting '%s' == %pI4, port %u\n",
   buffer, &newaddr.ip, port);

 if (!nf_nat_mangle_tcp_packet(skb, ct, ctinfo, protoff, matchoff,
          matchlen, buffer, strlen(buffer))) {
  nf_ct_helper_log(skb, ct, "cannot mangle packet");
  nf_ct_unexpect_related(exp);
  return NF_DROP;
 }

 return NF_ACCEPT;
}
