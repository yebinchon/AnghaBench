
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ip_vs_conn {int flags; int lock; int cport; } ;
typedef int __be16 ;


 int IP_VS_CONN_F_NO_CPORT ;
 int atomic_dec (int *) ;
 int ip_vs_conn_hash (struct ip_vs_conn*) ;
 int ip_vs_conn_no_cport_cnt ;
 scalar_t__ ip_vs_conn_unhash (struct ip_vs_conn*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

void ip_vs_conn_fill_cport(struct ip_vs_conn *cp, __be16 cport)
{
 if (ip_vs_conn_unhash(cp)) {
  spin_lock_bh(&cp->lock);
  if (cp->flags & IP_VS_CONN_F_NO_CPORT) {
   atomic_dec(&ip_vs_conn_no_cport_cnt);
   cp->flags &= ~IP_VS_CONN_F_NO_CPORT;
   cp->cport = cport;
  }
  spin_unlock_bh(&cp->lock);


  ip_vs_conn_hash(cp);
 }
}
