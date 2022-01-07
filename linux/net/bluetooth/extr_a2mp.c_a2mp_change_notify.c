
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int len; scalar_t__ data; } ;
struct amp_mgr {int dummy; } ;
struct a2mp_cmd {int dummy; } ;
struct a2mp_cl {int status; int type; int id; } ;


 int BT_DBG (char*,int ,int ,int ) ;
 struct a2mp_cl* skb_pull (struct sk_buff*,int) ;

__attribute__((used)) static int a2mp_change_notify(struct amp_mgr *mgr, struct sk_buff *skb,
         struct a2mp_cmd *hdr)
{
 struct a2mp_cl *cl = (void *) skb->data;

 while (skb->len >= sizeof(*cl)) {
  BT_DBG("Controller id %d type %d status %d", cl->id, cl->type,
         cl->status);
  cl = skb_pull(skb, sizeof(*cl));
 }



 return 0;
}
