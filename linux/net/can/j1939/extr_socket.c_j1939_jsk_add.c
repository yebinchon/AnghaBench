
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct j1939_sock {int list; struct j1939_priv* priv; int state; } ;
struct j1939_priv {int j1939_socks_lock; int j1939_socks; } ;


 int J1939_SOCK_BOUND ;
 int j1939_priv_get (struct j1939_priv*) ;
 int list_add_tail (int *,int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static void j1939_jsk_add(struct j1939_priv *priv, struct j1939_sock *jsk)
{
 jsk->state |= J1939_SOCK_BOUND;
 j1939_priv_get(priv);
 jsk->priv = priv;

 spin_lock_bh(&priv->j1939_socks_lock);
 list_add_tail(&jsk->list, &priv->j1939_socks);
 spin_unlock_bh(&priv->j1939_socks_lock);
}
