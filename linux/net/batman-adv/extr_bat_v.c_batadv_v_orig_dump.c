
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct netlink_callback {int* args; TYPE_1__* nlh; int skb; } ;
struct hlist_head {int dummy; } ;
struct batadv_priv {struct batadv_hashtable* orig_hash; } ;
struct batadv_hashtable {int size; struct hlist_head* table; } ;
struct batadv_hard_iface {int dummy; } ;
struct TYPE_4__ {int portid; } ;
struct TYPE_3__ {int nlmsg_seq; } ;


 TYPE_2__ NETLINK_CB (int ) ;
 scalar_t__ batadv_v_orig_dump_bucket (struct sk_buff*,int,int ,struct batadv_priv*,struct batadv_hard_iface*,struct hlist_head*,int*,int*) ;

__attribute__((used)) static void
batadv_v_orig_dump(struct sk_buff *msg, struct netlink_callback *cb,
     struct batadv_priv *bat_priv,
     struct batadv_hard_iface *if_outgoing)
{
 struct batadv_hashtable *hash = bat_priv->orig_hash;
 struct hlist_head *head;
 int bucket = cb->args[0];
 int idx = cb->args[1];
 int sub = cb->args[2];
 int portid = NETLINK_CB(cb->skb).portid;

 while (bucket < hash->size) {
  head = &hash->table[bucket];

  if (batadv_v_orig_dump_bucket(msg, portid,
           cb->nlh->nlmsg_seq,
           bat_priv, if_outgoing, head, &idx,
           &sub))
   break;

  bucket++;
 }

 cb->args[0] = bucket;
 cb->args[1] = idx;
 cb->args[2] = sub;
}
