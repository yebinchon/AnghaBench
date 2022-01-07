
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_9__ ;
typedef struct TYPE_19__ TYPE_8__ ;
typedef struct TYPE_18__ TYPE_7__ ;
typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;
typedef struct TYPE_11__ TYPE_10__ ;


struct tcphdr {int rst; int fin; } ;
struct TYPE_11__ {int code; } ;
struct nft_regs {TYPE_10__ verdict; } ;
struct TYPE_16__ {int thoff; } ;
struct nft_pktinfo {TYPE_5__ xt; int skb; } ;
struct nft_flow_offload {TYPE_1__* flowtable; } ;
struct nft_expr {int dummy; } ;
struct nf_flowtable {int dummy; } ;
struct nf_flow_route {TYPE_9__* tuple; } ;
struct TYPE_18__ {TYPE_6__* seen; } ;
struct TYPE_19__ {TYPE_7__ tcp; } ;
struct nf_conn {int status; TYPE_8__ proto; TYPE_4__* tuplehash; } ;
struct flow_offload {int dummy; } ;
typedef enum ip_conntrack_info { ____Placeholder_ip_conntrack_info } ip_conntrack_info ;
typedef enum ip_conntrack_dir { ____Placeholder_ip_conntrack_dir } ip_conntrack_dir ;
typedef int _tcph ;
struct TYPE_20__ {int dst; } ;
struct TYPE_17__ {int flags; } ;
struct TYPE_13__ {int protonum; } ;
struct TYPE_14__ {TYPE_2__ dst; } ;
struct TYPE_15__ {TYPE_3__ tuple; } ;
struct TYPE_12__ {struct nf_flowtable data; } ;


 int CTINFO2DIR (int) ;


 int IPS_OFFLOAD_BIT ;
 int IPS_SEQ_ADJUST ;
 size_t IP_CT_DIR_ORIGINAL ;
 int IP_CT_TCP_FLAG_BE_LIBERAL ;
 int NFT_BREAK ;
 int NF_CT_EXT_HELPER ;
 int clear_bit (int ,int*) ;
 int dst_release (int ) ;
 int flow_offload_add (struct nf_flowtable*,struct flow_offload*) ;
 struct flow_offload* flow_offload_alloc (struct nf_conn*,struct nf_flow_route*) ;
 int flow_offload_free (struct flow_offload*) ;
 scalar_t__ nf_ct_ext_exist (struct nf_conn*,int ) ;
 struct nf_conn* nf_ct_get (int ,int*) ;
 int nf_ct_is_confirmed (struct nf_conn*) ;
 struct nft_flow_offload* nft_expr_priv (struct nft_expr const*) ;
 scalar_t__ nft_flow_offload_skip (int ,int ) ;
 scalar_t__ nft_flow_route (struct nft_pktinfo const*,struct nf_conn*,struct nf_flow_route*,int) ;
 int nft_pf (struct nft_pktinfo const*) ;
 struct tcphdr* skb_header_pointer (int ,int ,int,struct tcphdr*) ;
 scalar_t__ test_and_set_bit (int ,int*) ;
 int unlikely (int) ;

__attribute__((used)) static void nft_flow_offload_eval(const struct nft_expr *expr,
      struct nft_regs *regs,
      const struct nft_pktinfo *pkt)
{
 struct nft_flow_offload *priv = nft_expr_priv(expr);
 struct nf_flowtable *flowtable = &priv->flowtable->data;
 struct tcphdr _tcph, *tcph = ((void*)0);
 enum ip_conntrack_info ctinfo;
 struct nf_flow_route route;
 struct flow_offload *flow;
 enum ip_conntrack_dir dir;
 struct nf_conn *ct;
 int ret;

 if (nft_flow_offload_skip(pkt->skb, nft_pf(pkt)))
  goto out;

 ct = nf_ct_get(pkt->skb, &ctinfo);
 if (!ct)
  goto out;

 switch (ct->tuplehash[IP_CT_DIR_ORIGINAL].tuple.dst.protonum) {
 case 129:
  tcph = skb_header_pointer(pkt->skb, pkt->xt.thoff,
       sizeof(_tcph), &_tcph);
  if (unlikely(!tcph || tcph->fin || tcph->rst))
   goto out;
  break;
 case 128:
  break;
 default:
  goto out;
 }

 if (nf_ct_ext_exist(ct, NF_CT_EXT_HELPER) ||
     ct->status & IPS_SEQ_ADJUST)
  goto out;

 if (!nf_ct_is_confirmed(ct))
  goto out;

 if (test_and_set_bit(IPS_OFFLOAD_BIT, &ct->status))
  goto out;

 dir = CTINFO2DIR(ctinfo);
 if (nft_flow_route(pkt, ct, &route, dir) < 0)
  goto err_flow_route;

 flow = flow_offload_alloc(ct, &route);
 if (!flow)
  goto err_flow_alloc;

 if (tcph) {
  ct->proto.tcp.seen[0].flags |= IP_CT_TCP_FLAG_BE_LIBERAL;
  ct->proto.tcp.seen[1].flags |= IP_CT_TCP_FLAG_BE_LIBERAL;
 }

 ret = flow_offload_add(flowtable, flow);
 if (ret < 0)
  goto err_flow_add;

 dst_release(route.tuple[!dir].dst);
 return;

err_flow_add:
 flow_offload_free(flow);
err_flow_alloc:
 dst_release(route.tuple[!dir].dst);
err_flow_route:
 clear_bit(IPS_OFFLOAD_BIT, &ct->status);
out:
 regs->verdict.code = NFT_BREAK;
}
