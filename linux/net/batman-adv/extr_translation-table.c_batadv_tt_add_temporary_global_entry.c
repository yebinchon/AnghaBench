
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct batadv_priv {int dummy; } ;
struct batadv_orig_node {int orig; int last_ttvn; } ;


 int BATADV_DBG_TT ;
 int BATADV_TT_CLIENT_TEMP ;
 int atomic_read (int *) ;
 scalar_t__ batadv_bla_is_loopdetect_mac (unsigned char const*) ;
 int batadv_dbg (int ,struct batadv_priv*,char*,unsigned char const*,int ,int ) ;
 int batadv_print_vid (unsigned short) ;
 int batadv_tt_global_add (struct batadv_priv*,struct batadv_orig_node*,unsigned char const*,unsigned short,int ,int ) ;

bool batadv_tt_add_temporary_global_entry(struct batadv_priv *bat_priv,
       struct batadv_orig_node *orig_node,
       const unsigned char *addr,
       unsigned short vid)
{



 if (batadv_bla_is_loopdetect_mac(addr))
  return 0;

 if (!batadv_tt_global_add(bat_priv, orig_node, addr, vid,
      BATADV_TT_CLIENT_TEMP,
      atomic_read(&orig_node->last_ttvn)))
  return 0;

 batadv_dbg(BATADV_DBG_TT, bat_priv,
     "Added temporary global client (addr: %pM, vid: %d, orig: %pM)\n",
     addr, batadv_print_vid(vid), orig_node->orig);

 return 1;
}
