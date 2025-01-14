
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct batadv_priv {int hop_penalty; } ;


 int BATADV_TQ_MAX_VALUE ;
 int atomic_read (int *) ;

__attribute__((used)) static u8 batadv_hop_penalty(u8 tq, const struct batadv_priv *bat_priv)
{
 int hop_penalty = atomic_read(&bat_priv->hop_penalty);
 int new_tq;

 new_tq = tq * (BATADV_TQ_MAX_VALUE - hop_penalty);
 new_tq /= BATADV_TQ_MAX_VALUE;

 return new_tq;
}
