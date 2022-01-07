
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct TYPE_2__ {int lock; } ;


 int __hci_send_to_channel (unsigned short,struct sk_buff*,int,struct sock*) ;
 TYPE_1__ hci_sk_list ;
 int read_lock (int *) ;
 int read_unlock (int *) ;

void hci_send_to_channel(unsigned short channel, struct sk_buff *skb,
    int flag, struct sock *skip_sk)
{
 read_lock(&hci_sk_list.lock);
 __hci_send_to_channel(channel, skb, flag, skip_sk);
 read_unlock(&hci_sk_list.lock);
}
