
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ovs_key_ct_labels {int dummy; } ;
struct nf_conn_labels {int bits; } ;
struct nf_conn {int dummy; } ;


 int OVS_CT_LABELS_LEN ;
 int memcpy (struct ovs_key_ct_labels*,int ,int ) ;
 int memset (struct ovs_key_ct_labels*,int ,int ) ;
 struct nf_conn_labels* nf_ct_labels_find (struct nf_conn const*) ;

__attribute__((used)) static void ovs_ct_get_labels(const struct nf_conn *ct,
         struct ovs_key_ct_labels *labels)
{
 struct nf_conn_labels *cl = ct ? nf_ct_labels_find(ct) : ((void*)0);

 if (cl)
  memcpy(labels, cl->bits, OVS_CT_LABELS_LEN);
 else
  memset(labels, 0, OVS_CT_LABELS_LEN);
}
