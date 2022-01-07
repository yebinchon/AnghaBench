
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct unix_stream_read_state {int msg; } ;
struct sk_buff {int dummy; } ;
struct TYPE_2__ {scalar_t__ consumed; } ;


 TYPE_1__ UNIXCB (struct sk_buff*) ;
 int skb_copy_datagram_msg (struct sk_buff*,scalar_t__,int ,int) ;

__attribute__((used)) static int unix_stream_read_actor(struct sk_buff *skb,
      int skip, int chunk,
      struct unix_stream_read_state *state)
{
 int ret;

 ret = skb_copy_datagram_msg(skb, UNIXCB(skb).consumed + skip,
        state->msg, chunk);
 return ret ?: chunk;
}
