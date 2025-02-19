
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct tcf_meta_hdr {int right; int left; } ;
struct tcf_ematch {scalar_t__ data; } ;
struct sk_buff {int dummy; } ;
struct meta_type_ops {scalar_t__ (* dump ) (struct sk_buff*,TYPE_1__*,int ) ;} ;
struct TYPE_4__ {int hdr; } ;
struct meta_match {TYPE_1__ rvalue; TYPE_1__ lvalue; } ;
typedef int hdr ;


 int TCA_EM_META_HDR ;
 int TCA_EM_META_LVALUE ;
 int TCA_EM_META_RVALUE ;
 int memcpy (int *,int *,int) ;
 int memset (struct tcf_meta_hdr*,int ,int) ;
 struct meta_type_ops* meta_type_ops (TYPE_1__*) ;
 scalar_t__ nla_put (struct sk_buff*,int ,int,struct tcf_meta_hdr*) ;
 scalar_t__ stub1 (struct sk_buff*,TYPE_1__*,int ) ;
 scalar_t__ stub2 (struct sk_buff*,TYPE_1__*,int ) ;

__attribute__((used)) static int em_meta_dump(struct sk_buff *skb, struct tcf_ematch *em)
{
 struct meta_match *meta = (struct meta_match *) em->data;
 struct tcf_meta_hdr hdr;
 const struct meta_type_ops *ops;

 memset(&hdr, 0, sizeof(hdr));
 memcpy(&hdr.left, &meta->lvalue.hdr, sizeof(hdr.left));
 memcpy(&hdr.right, &meta->rvalue.hdr, sizeof(hdr.right));

 if (nla_put(skb, TCA_EM_META_HDR, sizeof(hdr), &hdr))
  goto nla_put_failure;

 ops = meta_type_ops(&meta->lvalue);
 if (ops->dump(skb, &meta->lvalue, TCA_EM_META_LVALUE) < 0 ||
     ops->dump(skb, &meta->rvalue, TCA_EM_META_RVALUE) < 0)
  goto nla_put_failure;

 return 0;

nla_put_failure:
 return -1;
}
