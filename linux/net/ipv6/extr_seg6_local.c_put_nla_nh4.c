
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct seg6_local_lwt {int nh4; } ;
struct nlattr {int dummy; } ;
struct in_addr {int dummy; } ;


 int EMSGSIZE ;
 int SEG6_LOCAL_NH4 ;
 int memcpy (int ,int *,int) ;
 int nla_data (struct nlattr*) ;
 struct nlattr* nla_reserve (struct sk_buff*,int ,int) ;

__attribute__((used)) static int put_nla_nh4(struct sk_buff *skb, struct seg6_local_lwt *slwt)
{
 struct nlattr *nla;

 nla = nla_reserve(skb, SEG6_LOCAL_NH4, sizeof(struct in_addr));
 if (!nla)
  return -EMSGSIZE;

 memcpy(nla_data(nla), &slwt->nh4, sizeof(struct in_addr));

 return 0;
}
