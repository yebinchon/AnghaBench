
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct j1939_priv {int tp_max_packet_size; int active_session_list; int active_session_list_lock; } ;


 int INIT_LIST_HEAD (int *) ;
 int J1939_MAX_ETP_PACKET_SIZE ;
 int spin_lock_init (int *) ;

void j1939_tp_init(struct j1939_priv *priv)
{
 spin_lock_init(&priv->active_session_list_lock);
 INIT_LIST_HEAD(&priv->active_session_list);
 priv->tp_max_packet_size = J1939_MAX_ETP_PACKET_SIZE;
}
