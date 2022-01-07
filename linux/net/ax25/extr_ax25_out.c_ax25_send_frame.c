
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct net_device {int dummy; } ;
typedef int ax25_digi ;
struct TYPE_19__ {int slave; } ;
struct TYPE_20__ {int* values; TYPE_2__ dama; } ;
typedef TYPE_3__ ax25_dev ;
struct TYPE_21__ {int state; TYPE_1__* ax25_dev; int * digipeat; void* dest_addr; void* source_addr; } ;
typedef TYPE_4__ ax25_cb ;
typedef void* ax25_address ;
struct TYPE_18__ {int* values; } ;





 int AX25_STATE_1 ;
 size_t AX25_VALUES_PACLEN ;
 size_t AX25_VALUES_PROTOCOL ;
 int GFP_ATOMIC ;
 int ax25_cb_add (TYPE_4__*) ;
 int ax25_cb_hold (TYPE_4__*) ;
 int ax25_cb_put (TYPE_4__*) ;
 TYPE_4__* ax25_create_cb () ;
 TYPE_3__* ax25_dev_ax25dev (struct net_device*) ;
 int ax25_ds_establish_data_link (TYPE_4__*) ;
 int ax25_fillin_cb (TYPE_4__*,TYPE_3__*) ;
 TYPE_4__* ax25_find_cb (void**,void**,int *,struct net_device*) ;
 int ax25_output (TYPE_4__*,int,struct sk_buff*) ;
 int ax25_start_heartbeat (TYPE_4__*) ;
 int ax25_std_establish_data_link (TYPE_4__*) ;
 int * kmemdup (int *,int,int ) ;

ax25_cb *ax25_send_frame(struct sk_buff *skb, int paclen, ax25_address *src, ax25_address *dest, ax25_digi *digi, struct net_device *dev)
{
 ax25_dev *ax25_dev;
 ax25_cb *ax25;





 if (paclen == 0) {
  if ((ax25_dev = ax25_dev_ax25dev(dev)) == ((void*)0))
   return ((void*)0);

  paclen = ax25_dev->values[AX25_VALUES_PACLEN];
 }




 if ((ax25 = ax25_find_cb(src, dest, digi, dev)) != ((void*)0)) {
  ax25_output(ax25, paclen, skb);
  return ax25;
 }

 if ((ax25_dev = ax25_dev_ax25dev(dev)) == ((void*)0))
  return ((void*)0);

 if ((ax25 = ax25_create_cb()) == ((void*)0))
  return ((void*)0);

 ax25_fillin_cb(ax25, ax25_dev);

 ax25->source_addr = *src;
 ax25->dest_addr = *dest;

 if (digi != ((void*)0)) {
  ax25->digipeat = kmemdup(digi, sizeof(*digi), GFP_ATOMIC);
  if (ax25->digipeat == ((void*)0)) {
   ax25_cb_put(ax25);
   return ((void*)0);
  }
 }

 switch (ax25->ax25_dev->values[AX25_VALUES_PROTOCOL]) {
 case 128:
 case 129:
  ax25_std_establish_data_link(ax25);
  break;
 }





 ax25_cb_hold(ax25);

 ax25_cb_add(ax25);

 ax25->state = AX25_STATE_1;

 ax25_start_heartbeat(ax25);

 ax25_output(ax25, paclen, skb);

 return ax25;
}
