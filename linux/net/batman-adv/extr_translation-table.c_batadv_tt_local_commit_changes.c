
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int commit_lock; } ;
struct batadv_priv {TYPE_1__ tt; } ;


 int batadv_tt_local_commit_changes_nolock (struct batadv_priv*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

void batadv_tt_local_commit_changes(struct batadv_priv *bat_priv)
{
 spin_lock_bh(&bat_priv->tt.commit_lock);
 batadv_tt_local_commit_changes_nolock(bat_priv);
 spin_unlock_bh(&bat_priv->tt.commit_lock);
}
