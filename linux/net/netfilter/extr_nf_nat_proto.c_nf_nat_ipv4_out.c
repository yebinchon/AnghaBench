
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


struct sk_buff {int dummy; } ;
struct nf_hook_state {int net; } ;
struct nf_conn {TYPE_8__* tuplehash; } ;
typedef enum ip_conntrack_info { ____Placeholder_ip_conntrack_info } ip_conntrack_info ;
typedef enum ip_conntrack_dir { ____Placeholder_ip_conntrack_dir } ip_conntrack_dir ;
struct TYPE_18__ {int flags; } ;
struct TYPE_14__ {scalar_t__ all; } ;
struct TYPE_11__ {scalar_t__ ip; } ;
struct TYPE_15__ {scalar_t__ protonum; TYPE_5__ u; TYPE_2__ u3; } ;
struct TYPE_12__ {scalar_t__ all; } ;
struct TYPE_10__ {scalar_t__ ip; } ;
struct TYPE_13__ {TYPE_3__ u; TYPE_1__ u3; } ;
struct TYPE_16__ {TYPE_6__ dst; TYPE_4__ src; } ;
struct TYPE_17__ {TYPE_7__ tuple; } ;


 int AF_INET ;
 int CTINFO2DIR (int) ;
 TYPE_9__* IPCB (struct sk_buff*) ;
 scalar_t__ IPPROTO_ICMP ;
 int IPSKB_XFRM_TRANSFORMED ;
 unsigned int NF_ACCEPT ;
 unsigned int NF_DROP_ERR (int) ;
 struct nf_conn* nf_ct_get (struct sk_buff*,int*) ;
 unsigned int nf_nat_ipv4_fn (void*,struct sk_buff*,struct nf_hook_state const*) ;
 int nf_xfrm_me_harder (int ,struct sk_buff*,int ) ;

__attribute__((used)) static unsigned int
nf_nat_ipv4_out(void *priv, struct sk_buff *skb,
  const struct nf_hook_state *state)
{





 unsigned int ret;

 ret = nf_nat_ipv4_fn(priv, skb, state);
 return ret;
}
