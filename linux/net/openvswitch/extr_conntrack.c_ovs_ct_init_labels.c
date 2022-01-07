
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int labels; } ;
struct sw_flow_key {TYPE_1__ ct; } ;
struct ovs_key_ct_labels {int* ct_labels_32; } ;
struct nf_conn_labels {scalar_t__ bits; } ;
struct nf_conn {scalar_t__ master; } ;


 int ENOSPC ;
 int IPCT_LABEL ;
 int OVS_CT_LABELS_LEN ;
 int OVS_CT_LABELS_LEN_32 ;
 int labels_nonzero (struct ovs_key_ct_labels const*) ;
 int memcpy (int *,scalar_t__,int ) ;
 int nf_conntrack_event_cache (int ,struct nf_conn*) ;
 struct nf_conn_labels* nf_ct_labels_find (scalar_t__) ;
 struct nf_conn_labels* ovs_ct_get_conn_labels (struct nf_conn*) ;

__attribute__((used)) static int ovs_ct_init_labels(struct nf_conn *ct, struct sw_flow_key *key,
         const struct ovs_key_ct_labels *labels,
         const struct ovs_key_ct_labels *mask)
{
 struct nf_conn_labels *cl, *master_cl;
 bool have_mask = labels_nonzero(mask);


 master_cl = ct->master ? nf_ct_labels_find(ct->master) : ((void*)0);

 if (!master_cl && !have_mask)
  return 0;

 cl = ovs_ct_get_conn_labels(ct);
 if (!cl)
  return -ENOSPC;


 if (master_cl)
  *cl = *master_cl;

 if (have_mask) {
  u32 *dst = (u32 *)cl->bits;
  int i;

  for (i = 0; i < OVS_CT_LABELS_LEN_32; i++)
   dst[i] = (dst[i] & ~mask->ct_labels_32[i]) |
    (labels->ct_labels_32[i]
     & mask->ct_labels_32[i]);
 }




 nf_conntrack_event_cache(IPCT_LABEL, ct);

 memcpy(&key->ct.labels, cl->bits, OVS_CT_LABELS_LEN);

 return 0;
}
