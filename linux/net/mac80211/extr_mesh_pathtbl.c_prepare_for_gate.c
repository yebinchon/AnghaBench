
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct sk_buff {scalar_t__ data; } ;
struct mesh_path {TYPE_3__* sdata; int next_hop; } ;
struct ieee80211s_hdr {int flags; char* eaddr1; char* eaddr2; } ;
struct ieee80211_hdr {char* addr3; char* addr4; char* addr1; char* addr2; int frame_control; } ;
struct TYPE_5__ {char* addr; } ;
struct TYPE_8__ {TYPE_1__ sta; } ;
struct TYPE_6__ {char* addr; } ;
struct TYPE_7__ {TYPE_2__ vif; } ;


 int ETH_ALEN ;
 int MESH_FLAGS_AE ;
 int MESH_FLAGS_AE_A5_A6 ;
 int ieee80211_hdrlen (int ) ;
 int memcpy (char*,char*,int) ;
 int memmove (scalar_t__,struct ieee80211_hdr*,int) ;
 TYPE_4__* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int skb_push (struct sk_buff*,int) ;

__attribute__((used)) static void prepare_for_gate(struct sk_buff *skb, char *dst_addr,
        struct mesh_path *gate_mpath)
{
 struct ieee80211_hdr *hdr;
 struct ieee80211s_hdr *mshdr;
 int mesh_hdrlen, hdrlen;
 char *next_hop;

 hdr = (struct ieee80211_hdr *) skb->data;
 hdrlen = ieee80211_hdrlen(hdr->frame_control);
 mshdr = (struct ieee80211s_hdr *) (skb->data + hdrlen);

 if (!(mshdr->flags & MESH_FLAGS_AE)) {

  mesh_hdrlen = 6;


  skb_push(skb, 2 * ETH_ALEN);
  memmove(skb->data, hdr, hdrlen + mesh_hdrlen);

  hdr = (struct ieee80211_hdr *) skb->data;



  mshdr = (struct ieee80211s_hdr *) (skb->data + hdrlen);
  mshdr->flags = MESH_FLAGS_AE_A5_A6;
  memcpy(mshdr->eaddr1, hdr->addr3, ETH_ALEN);
  memcpy(mshdr->eaddr2, hdr->addr4, ETH_ALEN);
 }


 hdr = (struct ieee80211_hdr *) skb->data;
 rcu_read_lock();
 next_hop = rcu_dereference(gate_mpath->next_hop)->sta.addr;
 memcpy(hdr->addr1, next_hop, ETH_ALEN);
 rcu_read_unlock();
 memcpy(hdr->addr2, gate_mpath->sdata->vif.addr, ETH_ALEN);
 memcpy(hdr->addr3, dst_addr, ETH_ALEN);
}
