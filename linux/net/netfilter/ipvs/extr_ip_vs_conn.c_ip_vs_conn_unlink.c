
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ip_vs_conn {int flags; int lock; int c_list; int refcnt; } ;


 int IP_VS_CONN_F_HASHED ;
 int IP_VS_CONN_F_ONE_PACKET ;
 int ct_write_lock_bh (unsigned int) ;
 int ct_write_unlock_bh (unsigned int) ;
 int hlist_del_rcu (int *) ;
 unsigned int ip_vs_conn_hashkey_conn (struct ip_vs_conn*) ;
 int refcount_dec_if_one (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static inline bool ip_vs_conn_unlink(struct ip_vs_conn *cp)
{
 unsigned int hash;
 bool ret = 0;

 if (cp->flags & IP_VS_CONN_F_ONE_PACKET)
  return refcount_dec_if_one(&cp->refcnt);

 hash = ip_vs_conn_hashkey_conn(cp);

 ct_write_lock_bh(hash);
 spin_lock(&cp->lock);

 if (cp->flags & IP_VS_CONN_F_HASHED) {

  if (refcount_dec_if_one(&cp->refcnt)) {
   hlist_del_rcu(&cp->c_list);
   cp->flags &= ~IP_VS_CONN_F_HASHED;
   ret = 1;
  }
 }

 spin_unlock(&cp->lock);
 ct_write_unlock_bh(hash);

 return ret;
}
