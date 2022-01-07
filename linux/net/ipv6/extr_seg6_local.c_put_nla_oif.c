
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct seg6_local_lwt {int oif; } ;


 int EMSGSIZE ;
 int SEG6_LOCAL_OIF ;
 scalar_t__ nla_put_u32 (struct sk_buff*,int ,int ) ;

__attribute__((used)) static int put_nla_oif(struct sk_buff *skb, struct seg6_local_lwt *slwt)
{
 if (nla_put_u32(skb, SEG6_LOCAL_OIF, slwt->oif))
  return -EMSGSIZE;

 return 0;
}
