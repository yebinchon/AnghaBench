
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct lapb_cb {int state; int dev; scalar_t__ n2count; } ;


 int LAPB_BADTOKEN ;
 int LAPB_COMMAND ;
 int LAPB_DISC ;
 int LAPB_NOTCONNECTED ;
 int LAPB_OK ;
 int LAPB_POLLON ;



 int lapb_clear_queues (struct lapb_cb*) ;
 int lapb_dbg (int,char*,int ) ;
 struct lapb_cb* lapb_devtostruct (struct net_device*) ;
 int lapb_put (struct lapb_cb*) ;
 int lapb_send_control (struct lapb_cb*,int ,int ,int ) ;
 int lapb_start_t1timer (struct lapb_cb*) ;
 int lapb_stop_t2timer (struct lapb_cb*) ;

int lapb_disconnect_request(struct net_device *dev)
{
 struct lapb_cb *lapb = lapb_devtostruct(dev);
 int rc = LAPB_BADTOKEN;

 if (!lapb)
  goto out;

 switch (lapb->state) {
 case 130:
  rc = LAPB_NOTCONNECTED;
  goto out_put;

 case 129:
  lapb_dbg(1, "(%p) S1 TX DISC(1)\n", lapb->dev);
  lapb_dbg(0, "(%p) S1 -> S0\n", lapb->dev);
  lapb_send_control(lapb, LAPB_DISC, LAPB_POLLON, LAPB_COMMAND);
  lapb->state = 130;
  lapb_start_t1timer(lapb);
  rc = LAPB_NOTCONNECTED;
  goto out_put;

 case 128:
  rc = LAPB_OK;
  goto out_put;
 }

 lapb_clear_queues(lapb);
 lapb->n2count = 0;
 lapb_send_control(lapb, LAPB_DISC, LAPB_POLLON, LAPB_COMMAND);
 lapb_start_t1timer(lapb);
 lapb_stop_t2timer(lapb);
 lapb->state = 128;

 lapb_dbg(1, "(%p) S3 DISC(1)\n", lapb->dev);
 lapb_dbg(0, "(%p) S3 -> S2\n", lapb->dev);

 rc = LAPB_OK;
out_put:
 lapb_put(lapb);
out:
 return rc;
}
