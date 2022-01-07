
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cld_upcall {int cu_list; struct cld_net* cu_net; } ;
struct cld_net {int cn_lock; } ;


 int kfree (struct cld_upcall*) ;
 int list_del (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void
free_cld_upcall(struct cld_upcall *victim)
{
 struct cld_net *cn = victim->cu_net;

 spin_lock(&cn->cn_lock);
 list_del(&victim->cu_list);
 spin_unlock(&cn->cn_lock);
 kfree(victim);
}
