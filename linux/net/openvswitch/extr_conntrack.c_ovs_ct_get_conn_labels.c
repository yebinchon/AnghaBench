
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nf_conn_labels {int dummy; } ;
struct nf_conn {int dummy; } ;


 int nf_ct_labels_ext_add (struct nf_conn*) ;
 struct nf_conn_labels* nf_ct_labels_find (struct nf_conn*) ;

__attribute__((used)) static struct nf_conn_labels *ovs_ct_get_conn_labels(struct nf_conn *ct)
{
 struct nf_conn_labels *cl;

 cl = nf_ct_labels_find(ct);
 if (!cl) {
  nf_ct_labels_ext_add(ct);
  cl = nf_ct_labels_find(ct);
 }

 return cl;
}
