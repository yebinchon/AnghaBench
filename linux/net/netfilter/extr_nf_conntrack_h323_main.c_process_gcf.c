
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef union nf_inet_addr {int dummy; } nf_inet_addr ;
struct sk_buff {int dummy; } ;
struct nf_conntrack_expect {int tuple; int helper; } ;
struct nf_conn {TYPE_5__* tuplehash; int status; } ;
typedef enum ip_conntrack_info { ____Placeholder_ip_conntrack_info } ip_conntrack_info ;
typedef int addr ;
typedef scalar_t__ __be16 ;
struct TYPE_13__ {int rasAddress; } ;
struct TYPE_8__ {scalar_t__ port; } ;
struct TYPE_9__ {TYPE_1__ udp; } ;
struct TYPE_10__ {int u3; TYPE_2__ u; } ;
struct TYPE_11__ {TYPE_3__ src; } ;
struct TYPE_12__ {TYPE_4__ tuple; } ;
typedef TYPE_6__ GatekeeperConfirm ;


 int CTINFO2DIR (int) ;
 int IPPROTO_UDP ;
 int IPS_EXPECTED_BIT ;
 int NF_CT_EXPECT_CLASS_DEFAULT ;
 int get_h225_addr (struct nf_conn*,unsigned char*,int *,union nf_inet_addr*,scalar_t__*) ;
 int memcmp (union nf_inet_addr*,int *,int) ;
 int nf_conntrack_helper_ras ;
 int nf_ct_dump_tuple (int *) ;
 struct nf_conntrack_expect* nf_ct_expect_alloc (struct nf_conn*) ;
 int nf_ct_expect_init (struct nf_conntrack_expect*,int ,int ,int *,union nf_inet_addr*,int ,int *,scalar_t__*) ;
 int nf_ct_expect_put (struct nf_conntrack_expect*) ;
 scalar_t__ nf_ct_expect_related (struct nf_conntrack_expect*,int ) ;
 int nf_ct_l3num (struct nf_conn*) ;
 int pr_debug (char*) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static int process_gcf(struct sk_buff *skb, struct nf_conn *ct,
         enum ip_conntrack_info ctinfo,
         unsigned int protoff,
         unsigned char **data, GatekeeperConfirm *gcf)
{
 int dir = CTINFO2DIR(ctinfo);
 int ret = 0;
 __be16 port;
 union nf_inet_addr addr;
 struct nf_conntrack_expect *exp;

 pr_debug("nf_ct_ras: GCF\n");

 if (!get_h225_addr(ct, *data, &gcf->rasAddress, &addr, &port))
  return 0;


 if (!memcmp(&addr, &ct->tuplehash[dir].tuple.src.u3, sizeof(addr)) &&
     port == ct->tuplehash[dir].tuple.src.u.udp.port)
  return 0;


 if (test_bit(IPS_EXPECTED_BIT, &ct->status))
  return 0;


 if ((exp = nf_ct_expect_alloc(ct)) == ((void*)0))
  return -1;
 nf_ct_expect_init(exp, NF_CT_EXPECT_CLASS_DEFAULT, nf_ct_l3num(ct),
     &ct->tuplehash[!dir].tuple.src.u3, &addr,
     IPPROTO_UDP, ((void*)0), &port);
 exp->helper = nf_conntrack_helper_ras;

 if (nf_ct_expect_related(exp, 0) == 0) {
  pr_debug("nf_ct_ras: expect RAS ");
  nf_ct_dump_tuple(&exp->tuple);
 } else
  ret = -1;

 nf_ct_expect_put(exp);

 return ret;
}
