
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct batadv_priv {int dummy; } ;


 int batadv_tt_local_size_mod (struct batadv_priv*,unsigned short,int) ;

__attribute__((used)) static void batadv_tt_local_size_inc(struct batadv_priv *bat_priv,
         unsigned short vid)
{
 batadv_tt_local_size_mod(bat_priv, vid, 1);
}
