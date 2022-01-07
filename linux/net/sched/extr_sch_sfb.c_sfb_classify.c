
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tcf_result {int classid; } ;
struct tcf_proto {int dummy; } ;
struct sk_buff {int dummy; } ;


 int NET_XMIT_SUCCESS ;




 int TC_H_MIN (int ) ;
 int __NET_XMIT_STOLEN ;
 int tcf_classify (struct sk_buff*,struct tcf_proto*,struct tcf_result*,int) ;

__attribute__((used)) static bool sfb_classify(struct sk_buff *skb, struct tcf_proto *fl,
    int *qerr, u32 *salt)
{
 struct tcf_result res;
 int result;

 result = tcf_classify(skb, fl, &res, 0);
 if (result >= 0) {
  *salt = TC_H_MIN(res.classid);
  return 1;
 }
 return 0;
}
