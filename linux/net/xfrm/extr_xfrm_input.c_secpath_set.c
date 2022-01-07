
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct sec_path {scalar_t__ len; scalar_t__ olen; int ovec; } ;


 int SKB_EXT_SEC_PATH ;
 int memset (int ,int ,int) ;
 struct sec_path* skb_ext_add (struct sk_buff*,int ) ;
 struct sec_path* skb_ext_find (struct sk_buff*,int ) ;

struct sec_path *secpath_set(struct sk_buff *skb)
{
 struct sec_path *sp, *tmp = skb_ext_find(skb, SKB_EXT_SEC_PATH);

 sp = skb_ext_add(skb, SKB_EXT_SEC_PATH);
 if (!sp)
  return ((void*)0);

 if (tmp)
  return sp;


 memset(sp->ovec, 0, sizeof(sp->ovec));
 sp->olen = 0;
 sp->len = 0;

 return sp;
}
