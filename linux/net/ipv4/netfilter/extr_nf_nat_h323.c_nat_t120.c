
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_28__ TYPE_9__ ;
typedef struct TYPE_27__ TYPE_8__ ;
typedef struct TYPE_26__ TYPE_7__ ;
typedef struct TYPE_25__ TYPE_6__ ;
typedef struct TYPE_24__ TYPE_5__ ;
typedef struct TYPE_23__ TYPE_4__ ;
typedef struct TYPE_22__ TYPE_3__ ;
typedef struct TYPE_21__ TYPE_2__ ;
typedef struct TYPE_20__ TYPE_1__ ;
typedef struct TYPE_19__ TYPE_14__ ;
typedef struct TYPE_18__ TYPE_13__ ;
typedef struct TYPE_17__ TYPE_12__ ;
typedef struct TYPE_16__ TYPE_11__ ;
typedef struct TYPE_15__ TYPE_10__ ;


typedef scalar_t__ u_int16_t ;
struct sk_buff {int dummy; } ;
struct TYPE_16__ {int port; } ;
struct TYPE_17__ {TYPE_11__ tcp; } ;
struct TYPE_15__ {int ip; } ;
struct TYPE_18__ {TYPE_12__ u; TYPE_10__ u3; } ;
struct TYPE_26__ {int port; } ;
struct TYPE_27__ {TYPE_7__ tcp; } ;
struct TYPE_25__ {int ip; } ;
struct TYPE_28__ {TYPE_8__ u; TYPE_6__ u3; } ;
struct TYPE_19__ {TYPE_13__ dst; TYPE_9__ src; } ;
struct TYPE_20__ {int port; } ;
struct TYPE_21__ {TYPE_1__ tcp; } ;
struct nf_conntrack_expect {int dir; TYPE_14__ tuple; int expectfn; TYPE_2__ saved_proto; } ;
struct nf_conn {TYPE_5__* tuplehash; } ;
typedef enum ip_conntrack_info { ____Placeholder_ip_conntrack_info } ip_conntrack_info ;
typedef int __be16 ;
struct TYPE_22__ {int u3; } ;
struct TYPE_23__ {TYPE_3__ dst; } ;
struct TYPE_24__ {TYPE_4__ tuple; } ;
typedef int H245_TransportAddress ;


 int CTINFO2DIR (int) ;
 int EBUSY ;
 int htons (scalar_t__) ;
 int net_notice_ratelimited (char*) ;
 int nf_ct_expect_related (struct nf_conntrack_expect*,int ) ;
 int nf_ct_unexpect_related (struct nf_conntrack_expect*) ;
 int nf_nat_follow_master ;
 scalar_t__ ntohs (int ) ;
 int pr_debug (char*,int *,scalar_t__,int *,scalar_t__) ;
 scalar_t__ set_h245_addr (struct sk_buff*,unsigned int,unsigned char**,int,int *,int *,int ) ;

__attribute__((used)) static int nat_t120(struct sk_buff *skb, struct nf_conn *ct,
      enum ip_conntrack_info ctinfo,
      unsigned int protoff, unsigned char **data, int dataoff,
      H245_TransportAddress *taddr, __be16 port,
      struct nf_conntrack_expect *exp)
{
 int dir = CTINFO2DIR(ctinfo);
 u_int16_t nated_port = ntohs(port);


 exp->saved_proto.tcp.port = exp->tuple.dst.u.tcp.port;
 exp->expectfn = nf_nat_follow_master;
 exp->dir = !dir;


 for (; nated_port != 0; nated_port++) {
  int ret;

  exp->tuple.dst.u.tcp.port = htons(nated_port);
  ret = nf_ct_expect_related(exp, 0);
  if (ret == 0)
   break;
  else if (ret != -EBUSY) {
   nated_port = 0;
   break;
  }
 }

 if (nated_port == 0) {
  net_notice_ratelimited("nf_nat_h323: out of TCP ports\n");
  return 0;
 }


 if (set_h245_addr(skb, protoff, data, dataoff, taddr,
     &ct->tuplehash[!dir].tuple.dst.u3,
     htons(nated_port)) < 0) {
  nf_ct_unexpect_related(exp);
  return -1;
 }

 pr_debug("nf_nat_h323: expect T.120 %pI4:%hu->%pI4:%hu\n",
   &exp->tuple.src.u3.ip,
   ntohs(exp->tuple.src.u.tcp.port),
   &exp->tuple.dst.u3.ip,
   ntohs(exp->tuple.dst.u.tcp.port));

 return 0;
}
