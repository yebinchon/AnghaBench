
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct mrp_attr {scalar_t__ type; scalar_t__ len; int value; } ;
struct mrp_applicant {int pdu; } ;
typedef enum mrp_vecattr_event { ____Placeholder_mrp_vecattr_event } mrp_vecattr_event ;
struct TYPE_6__ {int attrvalue; TYPE_2__* vah; TYPE_1__* mh; } ;
struct TYPE_5__ {int lenflags; } ;
struct TYPE_4__ {scalar_t__ attrtype; scalar_t__ attrlen; } ;


 int WARN_ON (int) ;
 int __MRP_VECATTR_EVENT_MAX ;
 int* __skb_put (int ,int) ;
 int be16_to_cpu (int ) ;
 int cpu_to_be16 (int) ;
 int get_unaligned (int *) ;
 scalar_t__ memcmp (int ,int ,scalar_t__) ;
 int mrp_attrvalue_inc (int ,scalar_t__) ;
 TYPE_3__* mrp_cb (int ) ;
 scalar_t__ mrp_pdu_append_msg_hdr (struct mrp_applicant*,scalar_t__,scalar_t__) ;
 scalar_t__ mrp_pdu_append_vecattr_hdr (struct mrp_applicant*,int ,scalar_t__) ;
 int mrp_pdu_init (struct mrp_applicant*) ;
 int mrp_pdu_queue (struct mrp_applicant*) ;
 int put_unaligned (int ,int *) ;
 int skb_tail_pointer (int ) ;
 int skb_tailroom (int ) ;

__attribute__((used)) static int mrp_pdu_append_vecattr_event(struct mrp_applicant *app,
     const struct mrp_attr *attr,
     enum mrp_vecattr_event vaevent)
{
 u16 len, pos;
 u8 *vaevents;
 int err;
again:
 if (!app->pdu) {
  err = mrp_pdu_init(app);
  if (err < 0)
   return err;
 }





 if (!mrp_cb(app->pdu)->mh ||
     mrp_cb(app->pdu)->mh->attrtype != attr->type ||
     mrp_cb(app->pdu)->mh->attrlen != attr->len) {
  if (mrp_pdu_append_msg_hdr(app, attr->type, attr->len) < 0)
   goto queue;
 }





 if (!mrp_cb(app->pdu)->vah ||
     memcmp(mrp_cb(app->pdu)->attrvalue, attr->value, attr->len)) {
  if (mrp_pdu_append_vecattr_hdr(app, attr->value, attr->len) < 0)
   goto queue;
 }

 len = be16_to_cpu(get_unaligned(&mrp_cb(app->pdu)->vah->lenflags));
 pos = len % 3;




 if (!pos) {
  if (skb_tailroom(app->pdu) < sizeof(u8))
   goto queue;
  vaevents = __skb_put(app->pdu, sizeof(u8));
 } else {
  vaevents = (u8 *)(skb_tail_pointer(app->pdu) - sizeof(u8));
 }

 switch (pos) {
 case 0:
  *vaevents = vaevent * (__MRP_VECATTR_EVENT_MAX *
           __MRP_VECATTR_EVENT_MAX);
  break;
 case 1:
  *vaevents += vaevent * __MRP_VECATTR_EVENT_MAX;
  break;
 case 2:
  *vaevents += vaevent;
  break;
 default:
  WARN_ON(1);
 }




 put_unaligned(cpu_to_be16(++len), &mrp_cb(app->pdu)->vah->lenflags);
 mrp_attrvalue_inc(mrp_cb(app->pdu)->attrvalue, attr->len);

 return 0;

queue:
 mrp_pdu_queue(app);
 goto again;
}
