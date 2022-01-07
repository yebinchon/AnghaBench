
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tipc_msg {int dummy; } ;
struct TYPE_2__ {int msg_lengths_total; int * msg_length_profile; int msg_length_counts; int queue_sz_counts; int accu_queue_sz; } ;
struct tipc_link {TYPE_1__ stats; int transmq; } ;
struct sk_buff {int dummy; } ;


 scalar_t__ FIRST_FRAGMENT ;
 scalar_t__ MSG_FRAGMENTER ;
 struct tipc_msg* buf_msg (struct sk_buff*) ;
 struct tipc_msg* msg_inner_hdr (struct tipc_msg*) ;
 int msg_size (struct tipc_msg*) ;
 scalar_t__ msg_type (struct tipc_msg*) ;
 scalar_t__ msg_user (struct tipc_msg*) ;
 struct sk_buff* skb_peek (int *) ;
 scalar_t__ skb_queue_len (int *) ;

__attribute__((used)) static void link_profile_stats(struct tipc_link *l)
{
 struct sk_buff *skb;
 struct tipc_msg *msg;
 int length;


 l->stats.accu_queue_sz += skb_queue_len(&l->transmq);
 l->stats.queue_sz_counts++;

 skb = skb_peek(&l->transmq);
 if (!skb)
  return;
 msg = buf_msg(skb);
 length = msg_size(msg);

 if (msg_user(msg) == MSG_FRAGMENTER) {
  if (msg_type(msg) != FIRST_FRAGMENT)
   return;
  length = msg_size(msg_inner_hdr(msg));
 }
 l->stats.msg_lengths_total += length;
 l->stats.msg_length_counts++;
 if (length <= 64)
  l->stats.msg_length_profile[0]++;
 else if (length <= 256)
  l->stats.msg_length_profile[1]++;
 else if (length <= 1024)
  l->stats.msg_length_profile[2]++;
 else if (length <= 4096)
  l->stats.msg_length_profile[3]++;
 else if (length <= 16384)
  l->stats.msg_length_profile[4]++;
 else if (length <= 32768)
  l->stats.msg_length_profile[5]++;
 else
  l->stats.msg_length_profile[6]++;
}
