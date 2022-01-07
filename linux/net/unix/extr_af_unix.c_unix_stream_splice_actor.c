
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct unix_stream_read_state {int splice_flags; int pipe; TYPE_1__* socket; } ;
struct sk_buff {int dummy; } ;
struct TYPE_4__ {scalar_t__ consumed; } ;
struct TYPE_3__ {int sk; } ;


 TYPE_2__ UNIXCB (struct sk_buff*) ;
 int skb_splice_bits (struct sk_buff*,int ,scalar_t__,int ,int,int ) ;

__attribute__((used)) static int unix_stream_splice_actor(struct sk_buff *skb,
        int skip, int chunk,
        struct unix_stream_read_state *state)
{
 return skb_splice_bits(skb, state->socket->sk,
          UNIXCB(skb).consumed + skip,
          state->pipe, chunk, state->splice_flags);
}
