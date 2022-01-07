
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct sk_buff {int dummy; } ;
struct TYPE_6__ {int tx_acked; } ;
struct TYPE_4__ {scalar_t__ type; } ;
struct TYPE_5__ {TYPE_1__ addr; } ;
struct j1939_session {int total_message_size; TYPE_3__ pkt; TYPE_2__ skcb; } ;


 int GFP_ATOMIC ;
 int J1939_NLA_BYTES_ACKED ;
 scalar_t__ J1939_SIMPLE ;
 struct sk_buff* alloc_skb (int ,int ) ;
 int j1939_sk_opt_stats_get_size () ;
 int min (int,int ) ;
 int nla_put_u32 (struct sk_buff*,int ,int ) ;

__attribute__((used)) static struct sk_buff *
j1939_sk_get_timestamping_opt_stats(struct j1939_session *session)
{
 struct sk_buff *stats;
 u32 size;

 stats = alloc_skb(j1939_sk_opt_stats_get_size(), GFP_ATOMIC);
 if (!stats)
  return ((void*)0);

 if (session->skcb.addr.type == J1939_SIMPLE)
  size = session->total_message_size;
 else
  size = min(session->pkt.tx_acked * 7,
      session->total_message_size);

 nla_put_u32(stats, J1939_NLA_BYTES_ACKED, size);

 return stats;
}
