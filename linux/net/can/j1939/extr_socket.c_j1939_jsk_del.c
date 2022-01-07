
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct j1939_sock {int state; int * priv; int list; } ;
struct j1939_priv {int j1939_socks_lock; } ;


 int J1939_SOCK_BOUND ;
 int j1939_priv_put (struct j1939_priv*) ;
 int list_del_init (int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static void j1939_jsk_del(struct j1939_priv *priv, struct j1939_sock *jsk)
{
 spin_lock_bh(&priv->j1939_socks_lock);
 list_del_init(&jsk->list);
 spin_unlock_bh(&priv->j1939_socks_lock);

 jsk->priv = ((void*)0);
 j1939_priv_put(priv);
 jsk->state &= ~J1939_SOCK_BOUND;
}
