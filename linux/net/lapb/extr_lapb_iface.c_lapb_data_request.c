
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct net_device {int dummy; } ;
struct lapb_cb {scalar_t__ state; int write_queue; } ;


 int LAPB_BADTOKEN ;
 int LAPB_NOTCONNECTED ;
 int LAPB_OK ;
 scalar_t__ LAPB_STATE_3 ;
 scalar_t__ LAPB_STATE_4 ;
 struct lapb_cb* lapb_devtostruct (struct net_device*) ;
 int lapb_kick (struct lapb_cb*) ;
 int lapb_put (struct lapb_cb*) ;
 int skb_queue_tail (int *,struct sk_buff*) ;

int lapb_data_request(struct net_device *dev, struct sk_buff *skb)
{
 struct lapb_cb *lapb = lapb_devtostruct(dev);
 int rc = LAPB_BADTOKEN;

 if (!lapb)
  goto out;

 rc = LAPB_NOTCONNECTED;
 if (lapb->state != LAPB_STATE_3 && lapb->state != LAPB_STATE_4)
  goto out_put;

 skb_queue_tail(&lapb->write_queue, skb);
 lapb_kick(lapb);
 rc = LAPB_OK;
out_put:
 lapb_put(lapb);
out:
 return rc;
}
