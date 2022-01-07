
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct sk_buff {int dummy; } ;
struct nci_dev {TYPE_1__* ops; } ;
struct TYPE_2__ {int (* hci_event_received ) (struct nci_dev*,int ,int ,struct sk_buff*) ;} ;


 int stub1 (struct nci_dev*,int ,int ,struct sk_buff*) ;

__attribute__((used)) static void nci_hci_event_received(struct nci_dev *ndev, u8 pipe,
       u8 event, struct sk_buff *skb)
{
 if (ndev->ops->hci_event_received)
  ndev->ops->hci_event_received(ndev, pipe, event, skb);
}
