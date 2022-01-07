
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int labels; } ;
struct sw_flow_key {TYPE_1__ ct; } ;
struct ovs_key_ct_labels {int ct_labels_32; } ;
struct nf_conn_labels {int bits; } ;
struct nf_conn {int dummy; } ;


 int ENOSPC ;
 int OVS_CT_LABELS_LEN ;
 int OVS_CT_LABELS_LEN_32 ;
 int memcpy (int *,int ,int ) ;
 int nf_connlabels_replace (struct nf_conn*,int ,int ,int ) ;
 struct nf_conn_labels* ovs_ct_get_conn_labels (struct nf_conn*) ;

__attribute__((used)) static int ovs_ct_set_labels(struct nf_conn *ct, struct sw_flow_key *key,
        const struct ovs_key_ct_labels *labels,
        const struct ovs_key_ct_labels *mask)
{
 struct nf_conn_labels *cl;
 int err;

 cl = ovs_ct_get_conn_labels(ct);
 if (!cl)
  return -ENOSPC;

 err = nf_connlabels_replace(ct, labels->ct_labels_32,
        mask->ct_labels_32,
        OVS_CT_LABELS_LEN_32);
 if (err)
  return err;

 memcpy(&key->ct.labels, cl->bits, OVS_CT_LABELS_LEN);

 return 0;
}
