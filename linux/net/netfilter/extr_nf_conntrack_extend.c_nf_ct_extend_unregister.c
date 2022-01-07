
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nf_ct_ext_type {size_t id; } ;


 int RCU_INIT_POINTER (int ,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int nf_ct_ext_type_mutex ;
 int * nf_ct_ext_types ;
 int synchronize_rcu () ;

void nf_ct_extend_unregister(const struct nf_ct_ext_type *type)
{
 mutex_lock(&nf_ct_ext_type_mutex);
 RCU_INIT_POINTER(nf_ct_ext_types[type->id], ((void*)0));
 mutex_unlock(&nf_ct_ext_type_mutex);
 synchronize_rcu();
}
