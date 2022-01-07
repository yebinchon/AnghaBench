
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smp_cmd_keypress_notify {int value; } ;
struct sk_buff {scalar_t__ data; } ;
struct l2cap_conn {int dummy; } ;


 int BT_DBG (char*,int ) ;

__attribute__((used)) static int smp_cmd_keypress_notify(struct l2cap_conn *conn,
       struct sk_buff *skb)
{
 struct smp_cmd_keypress_notify *kp = (void *) skb->data;

 BT_DBG("value 0x%02x", kp->value);

 return 0;
}
