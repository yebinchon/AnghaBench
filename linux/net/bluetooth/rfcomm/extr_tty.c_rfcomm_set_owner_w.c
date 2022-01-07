
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int destructor; void* sk; } ;
struct rfcomm_dev {int wmem_alloc; int port; } ;


 int atomic_inc (int *) ;
 int rfcomm_wfree ;
 int tty_port_get (int *) ;

__attribute__((used)) static void rfcomm_set_owner_w(struct sk_buff *skb, struct rfcomm_dev *dev)
{
 tty_port_get(&dev->port);
 atomic_inc(&dev->wmem_alloc);
 skb->sk = (void *) dev;
 skb->destructor = rfcomm_wfree;
}
