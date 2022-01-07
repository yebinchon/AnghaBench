
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct ieee80211_sub_if_data {scalar_t__ fragment_next; struct ieee80211_fragment_entry* fragments; } ;
struct ieee80211_fragment_entry {unsigned int seq; int rx_queue; unsigned int last_frag; int check_sequential_pn; scalar_t__ extra_len; int first_frag_time; int skb_list; } ;


 scalar_t__ IEEE80211_FRAGMENT_MAX ;
 int __skb_queue_purge (int *) ;
 int __skb_queue_tail (int *,struct sk_buff*) ;
 int jiffies ;
 int skb_queue_empty (int *) ;

__attribute__((used)) static inline struct ieee80211_fragment_entry *
ieee80211_reassemble_add(struct ieee80211_sub_if_data *sdata,
    unsigned int frag, unsigned int seq, int rx_queue,
    struct sk_buff **skb)
{
 struct ieee80211_fragment_entry *entry;

 entry = &sdata->fragments[sdata->fragment_next++];
 if (sdata->fragment_next >= IEEE80211_FRAGMENT_MAX)
  sdata->fragment_next = 0;

 if (!skb_queue_empty(&entry->skb_list))
  __skb_queue_purge(&entry->skb_list);

 __skb_queue_tail(&entry->skb_list, *skb);
 *skb = ((void*)0);
 entry->first_frag_time = jiffies;
 entry->seq = seq;
 entry->rx_queue = rx_queue;
 entry->last_frag = frag;
 entry->check_sequential_pn = 0;
 entry->extra_len = 0;

 return entry;
}
