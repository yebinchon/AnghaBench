
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct svc_xprt {int xpt_list; int xpt_flags; } ;
struct svc_serv {int sv_lock; int sv_permsocks; } ;


 int XPT_TEMP ;
 int clear_bit (int ,int *) ;
 int list_add (int *,int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int svc_xprt_received (struct svc_xprt*) ;

void svc_add_new_perm_xprt(struct svc_serv *serv, struct svc_xprt *new)
{
 clear_bit(XPT_TEMP, &new->xpt_flags);
 spin_lock_bh(&serv->sv_lock);
 list_add(&new->xpt_list, &serv->sv_permsocks);
 spin_unlock_bh(&serv->sv_lock);
 svc_xprt_received(new);
}
