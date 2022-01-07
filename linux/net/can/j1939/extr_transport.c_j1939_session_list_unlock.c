
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct j1939_priv {int active_session_list_lock; } ;


 int spin_unlock_bh (int *) ;

__attribute__((used)) static inline void j1939_session_list_unlock(struct j1939_priv *priv)
{
 spin_unlock_bh(&priv->active_session_list_lock);
}
