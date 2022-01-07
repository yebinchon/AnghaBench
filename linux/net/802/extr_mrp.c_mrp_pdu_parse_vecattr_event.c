
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct mrp_attr {int dummy; } ;
struct mrp_applicant {int dummy; } ;
typedef enum mrp_vecattr_event { ____Placeholder_mrp_vecattr_event } mrp_vecattr_event ;
typedef enum mrp_event { ____Placeholder_mrp_event } mrp_event ;
struct TYPE_4__ {TYPE_1__* mh; int attrvalue; } ;
struct TYPE_3__ {int attrtype; int attrlen; } ;


 int MRP_EVENT_R_IN ;
 int MRP_EVENT_R_JOIN_IN ;
 int MRP_EVENT_R_JOIN_MT ;
 int MRP_EVENT_R_LV ;
 int MRP_EVENT_R_MT ;
 int MRP_EVENT_R_NEW ;






 int mrp_attr_event (struct mrp_applicant*,struct mrp_attr*,int) ;
 struct mrp_attr* mrp_attr_lookup (struct mrp_applicant*,int ,int ,int ) ;
 TYPE_2__* mrp_cb (struct sk_buff*) ;

__attribute__((used)) static void mrp_pdu_parse_vecattr_event(struct mrp_applicant *app,
     struct sk_buff *skb,
     enum mrp_vecattr_event vaevent)
{
 struct mrp_attr *attr;
 enum mrp_event event;

 attr = mrp_attr_lookup(app, mrp_cb(skb)->attrvalue,
          mrp_cb(skb)->mh->attrlen,
          mrp_cb(skb)->mh->attrtype);
 if (attr == ((void*)0))
  return;

 switch (vaevent) {
 case 128:
  event = MRP_EVENT_R_NEW;
  break;
 case 132:
  event = MRP_EVENT_R_JOIN_IN;
  break;
 case 133:
  event = MRP_EVENT_R_IN;
  break;
 case 131:
  event = MRP_EVENT_R_JOIN_MT;
  break;
 case 129:
  event = MRP_EVENT_R_MT;
  break;
 case 130:
  event = MRP_EVENT_R_LV;
  break;
 default:
  return;
 }

 mrp_attr_event(app, attr, event);
}
