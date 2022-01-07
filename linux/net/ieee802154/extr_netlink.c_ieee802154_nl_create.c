
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sk_buff {int dummy; } ;


 int GFP_ATOMIC ;
 int NLMSG_DEFAULT_SIZE ;
 void* genlmsg_put (struct sk_buff*,int ,int ,int *,int,int ) ;
 int ieee802154_seq_lock ;
 int ieee802154_seq_num ;
 int nl802154_family ;
 int nlmsg_free (struct sk_buff*) ;
 struct sk_buff* nlmsg_new (int ,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

struct sk_buff *ieee802154_nl_create(int flags, u8 req)
{
 void *hdr;
 struct sk_buff *msg = nlmsg_new(NLMSG_DEFAULT_SIZE, GFP_ATOMIC);
 unsigned long f;

 if (!msg)
  return ((void*)0);

 spin_lock_irqsave(&ieee802154_seq_lock, f);
 hdr = genlmsg_put(msg, 0, ieee802154_seq_num++,
     &nl802154_family, flags, req);
 spin_unlock_irqrestore(&ieee802154_seq_lock, f);
 if (!hdr) {
  nlmsg_free(msg);
  return ((void*)0);
 }

 return msg;
}
