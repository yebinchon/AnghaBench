
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nf_conntrack_helper {int hnode; } ;


 int expect_iter_me ;
 int hlist_del_rcu (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int nf_ct_expect_iterate_destroy (int ,int *) ;
 int nf_ct_helper_count ;
 int nf_ct_helper_mutex ;
 int nf_ct_iterate_destroy (int ,struct nf_conntrack_helper*) ;
 int synchronize_rcu () ;
 int unhelp ;

void nf_conntrack_helper_unregister(struct nf_conntrack_helper *me)
{
 mutex_lock(&nf_ct_helper_mutex);
 hlist_del_rcu(&me->hnode);
 nf_ct_helper_count--;
 mutex_unlock(&nf_ct_helper_mutex);




 synchronize_rcu();

 nf_ct_expect_iterate_destroy(expect_iter_me, ((void*)0));
 nf_ct_iterate_destroy(unhelp, me);




 synchronize_rcu();
}
