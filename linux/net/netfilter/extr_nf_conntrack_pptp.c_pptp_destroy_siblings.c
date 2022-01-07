
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int t ;
struct nf_ct_pptp_master {int pns_call_id; int pac_call_id; } ;
struct TYPE_12__ {int key; } ;
struct TYPE_13__ {TYPE_5__ gre; } ;
struct TYPE_14__ {TYPE_6__ u; void* protonum; } ;
struct TYPE_9__ {int key; } ;
struct TYPE_10__ {TYPE_2__ gre; } ;
struct TYPE_11__ {TYPE_3__ u; } ;
struct nf_conntrack_tuple {TYPE_7__ dst; TYPE_4__ src; } ;
struct nf_conn {TYPE_1__* tuplehash; } ;
struct net {int dummy; } ;
struct TYPE_8__ {int tuple; } ;


 void* IPPROTO_GRE ;
 size_t IP_CT_DIR_ORIGINAL ;
 size_t IP_CT_DIR_REPLY ;
 int destroy_sibling_or_exp (struct net*,struct nf_conn*,struct nf_conntrack_tuple*) ;
 int memcpy (struct nf_conntrack_tuple*,int *,int) ;
 int nf_ct_gre_keymap_destroy (struct nf_conn*) ;
 struct net* nf_ct_net (struct nf_conn*) ;
 struct nf_ct_pptp_master* nfct_help_data (struct nf_conn*) ;
 int pr_debug (char*) ;

__attribute__((used)) static void pptp_destroy_siblings(struct nf_conn *ct)
{
 struct net *net = nf_ct_net(ct);
 const struct nf_ct_pptp_master *ct_pptp_info = nfct_help_data(ct);
 struct nf_conntrack_tuple t;

 nf_ct_gre_keymap_destroy(ct);


 memcpy(&t, &ct->tuplehash[IP_CT_DIR_ORIGINAL].tuple, sizeof(t));
 t.dst.protonum = IPPROTO_GRE;
 t.src.u.gre.key = ct_pptp_info->pns_call_id;
 t.dst.u.gre.key = ct_pptp_info->pac_call_id;
 if (!destroy_sibling_or_exp(net, ct, &t))
  pr_debug("failed to timeout original pns->pac ct/exp\n");


 memcpy(&t, &ct->tuplehash[IP_CT_DIR_REPLY].tuple, sizeof(t));
 t.dst.protonum = IPPROTO_GRE;
 t.src.u.gre.key = ct_pptp_info->pac_call_id;
 t.dst.u.gre.key = ct_pptp_info->pns_call_id;
 if (!destroy_sibling_or_exp(net, ct, &t))
  pr_debug("failed to timeout reply pac->pns ct/exp\n");
}
