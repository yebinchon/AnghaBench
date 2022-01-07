
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ax25_linkfail {int lf_node; } ;


 int hlist_del_init (int *) ;
 int linkfail_lock ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

void ax25_linkfail_release(struct ax25_linkfail *lf)
{
 spin_lock_bh(&linkfail_lock);
 hlist_del_init(&lf->lf_node);
 spin_unlock_bh(&linkfail_lock);
}
