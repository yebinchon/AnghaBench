
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int hash; } ;
struct batadv_priv {TYPE_1__ dat; } ;
struct batadv_dat_entry {unsigned short vid; int mac_addr; int ip; int hash_entry; int refcount; void* last_update; } ;
typedef int __be32 ;


 int BATADV_DBG_DAT ;
 int GFP_ATOMIC ;
 int batadv_compare_dat ;
 int batadv_compare_eth (int ,int *) ;
 struct batadv_dat_entry* batadv_dat_entry_hash_find (struct batadv_priv*,int ,unsigned short) ;
 int batadv_dat_entry_put (struct batadv_dat_entry*) ;
 int batadv_dbg (int ,struct batadv_priv*,char*,int *,int ,int ) ;
 int batadv_hash_add (int ,int ,int ,struct batadv_dat_entry*,int *) ;
 int batadv_hash_dat ;
 int batadv_print_vid (unsigned short) ;
 int ether_addr_copy (int ,int *) ;
 void* jiffies ;
 struct batadv_dat_entry* kmalloc (int,int ) ;
 int kref_get (int *) ;
 int kref_init (int *) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void batadv_dat_entry_add(struct batadv_priv *bat_priv, __be32 ip,
     u8 *mac_addr, unsigned short vid)
{
 struct batadv_dat_entry *dat_entry;
 int hash_added;

 dat_entry = batadv_dat_entry_hash_find(bat_priv, ip, vid);

 if (dat_entry) {
  if (!batadv_compare_eth(dat_entry->mac_addr, mac_addr))
   ether_addr_copy(dat_entry->mac_addr, mac_addr);
  dat_entry->last_update = jiffies;
  batadv_dbg(BATADV_DBG_DAT, bat_priv,
      "Entry updated: %pI4 %pM (vid: %d)\n",
      &dat_entry->ip, dat_entry->mac_addr,
      batadv_print_vid(vid));
  goto out;
 }

 dat_entry = kmalloc(sizeof(*dat_entry), GFP_ATOMIC);
 if (!dat_entry)
  goto out;

 dat_entry->ip = ip;
 dat_entry->vid = vid;
 ether_addr_copy(dat_entry->mac_addr, mac_addr);
 dat_entry->last_update = jiffies;
 kref_init(&dat_entry->refcount);

 kref_get(&dat_entry->refcount);
 hash_added = batadv_hash_add(bat_priv->dat.hash, batadv_compare_dat,
         batadv_hash_dat, dat_entry,
         &dat_entry->hash_entry);

 if (unlikely(hash_added != 0)) {

  batadv_dat_entry_put(dat_entry);
  goto out;
 }

 batadv_dbg(BATADV_DBG_DAT, bat_priv, "New entry added: %pI4 %pM (vid: %d)\n",
     &dat_entry->ip, dat_entry->mac_addr, batadv_print_vid(vid));

out:
 if (dat_entry)
  batadv_dat_entry_put(dat_entry);
}
