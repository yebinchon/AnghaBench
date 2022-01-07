
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nf_ct_bridge_info {int dummy; } ;


 int WARN_ON (struct nf_ct_bridge_info*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct nf_ct_bridge_info* nf_ct_bridge_info ;
 int nf_ct_proto_mutex ;

void nf_ct_bridge_register(struct nf_ct_bridge_info *info)
{
 WARN_ON(nf_ct_bridge_info);
 mutex_lock(&nf_ct_proto_mutex);
 nf_ct_bridge_info = info;
 mutex_unlock(&nf_ct_proto_mutex);
}
