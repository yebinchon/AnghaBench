
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nf_ct_bridge_info {int dummy; } ;


 int WARN_ON (int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int * nf_ct_bridge_info ;
 int nf_ct_proto_mutex ;

void nf_ct_bridge_unregister(struct nf_ct_bridge_info *info)
{
 WARN_ON(!nf_ct_bridge_info);
 mutex_lock(&nf_ct_proto_mutex);
 nf_ct_bridge_info = ((void*)0);
 mutex_unlock(&nf_ct_proto_mutex);
}
