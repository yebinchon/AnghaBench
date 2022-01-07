
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct seg6_local_lwt {int nh6; } ;
struct nlattr {int dummy; } ;
struct in6_addr {int dummy; } ;


 int EMSGSIZE ;
 int SEG6_LOCAL_NH6 ;
 int memcpy (int ,int *,int) ;
 int nla_data (struct nlattr*) ;
 struct nlattr* nla_reserve (struct sk_buff*,int ,int) ;

__attribute__((used)) static int put_nla_nh6(struct sk_buff *skb, struct seg6_local_lwt *slwt)
{
 struct nlattr *nla;

 nla = nla_reserve(skb, SEG6_LOCAL_NH6, sizeof(struct in6_addr));
 if (!nla)
  return -EMSGSIZE;

 memcpy(nla_data(nla), &slwt->nh6, sizeof(struct in6_addr));

 return 0;
}
