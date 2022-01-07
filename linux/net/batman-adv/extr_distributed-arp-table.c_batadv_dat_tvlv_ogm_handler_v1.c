
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct batadv_priv {int dummy; } ;
struct batadv_orig_node {int capabilities; } ;


 int BATADV_ORIG_CAPA_HAS_DAT ;
 int BATADV_TVLV_HANDLER_OGM_CIFNOTFND ;
 int clear_bit (int ,int *) ;
 int set_bit (int ,int *) ;

__attribute__((used)) static void batadv_dat_tvlv_ogm_handler_v1(struct batadv_priv *bat_priv,
        struct batadv_orig_node *orig,
        u8 flags,
        void *tvlv_value, u16 tvlv_value_len)
{
 if (flags & BATADV_TVLV_HANDLER_OGM_CIFNOTFND)
  clear_bit(BATADV_ORIG_CAPA_HAS_DAT, &orig->capabilities);
 else
  set_bit(BATADV_ORIG_CAPA_HAS_DAT, &orig->capabilities);
}
