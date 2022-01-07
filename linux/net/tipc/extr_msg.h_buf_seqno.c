
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct sk_buff {int dummy; } ;


 int buf_msg (struct sk_buff*) ;
 int msg_seqno (int ) ;

__attribute__((used)) static inline u16 buf_seqno(struct sk_buff *skb)
{
 return msg_seqno(buf_msg(skb));
}
