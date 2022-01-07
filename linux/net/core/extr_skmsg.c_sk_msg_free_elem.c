
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sock {int dummy; } ;
struct sk_msg {int skb; } ;
struct scatterlist {int length; } ;


 int memset (struct scatterlist*,int ,int) ;
 int put_page (int ) ;
 int sg_page (struct scatterlist*) ;
 int sk_mem_uncharge (struct sock*,int) ;
 struct scatterlist* sk_msg_elem (struct sk_msg*,int) ;

__attribute__((used)) static int sk_msg_free_elem(struct sock *sk, struct sk_msg *msg, u32 i,
       bool charge)
{
 struct scatterlist *sge = sk_msg_elem(msg, i);
 u32 len = sge->length;

 if (charge)
  sk_mem_uncharge(sk, len);
 if (!msg->skb)
  put_page(sg_page(sge));
 memset(sge, 0, sizeof(*sge));
 return len;
}
