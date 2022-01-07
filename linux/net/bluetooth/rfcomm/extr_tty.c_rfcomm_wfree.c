
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ sk; } ;
struct rfcomm_dev {int port; int flags; int wmem_alloc; } ;


 int RFCOMM_TTY_ATTACHED ;
 int atomic_dec (int *) ;
 scalar_t__ test_bit (int ,int *) ;
 int tty_port_put (int *) ;
 int tty_port_tty_wakeup (int *) ;

__attribute__((used)) static void rfcomm_wfree(struct sk_buff *skb)
{
 struct rfcomm_dev *dev = (void *) skb->sk;
 atomic_dec(&dev->wmem_alloc);
 if (test_bit(RFCOMM_TTY_ATTACHED, &dev->flags))
  tty_port_tty_wakeup(&dev->port);
 tty_port_put(&dev->port);
}
