
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct sk_buff {scalar_t__ data; } ;
struct garp_attr_hdr {int len; int event; int data; } ;
struct garp_attr {int dummy; } ;
struct garp_applicant {TYPE_1__* app; } ;
typedef enum garp_event { ____Placeholder_garp_event } garp_event ;
struct TYPE_2__ {int maxattr; } ;



 int GARP_EVENT_R_EMPTY ;
 int GARP_EVENT_R_JOIN_EMPTY ;
 int GARP_EVENT_R_JOIN_IN ;
 int GARP_EVENT_R_LEAVE_EMPTY ;




 int garp_attr_event (struct garp_applicant*,struct garp_attr*,int) ;
 struct garp_attr* garp_attr_lookup (struct garp_applicant*,int ,unsigned int,int ) ;
 int garp_gid_event (struct garp_applicant*,int) ;
 int pskb_may_pull (struct sk_buff*,int) ;
 int skb_pull (struct sk_buff*,int) ;

__attribute__((used)) static int garp_pdu_parse_attr(struct garp_applicant *app, struct sk_buff *skb,
          u8 attrtype)
{
 const struct garp_attr_hdr *ga;
 struct garp_attr *attr;
 enum garp_event event;
 unsigned int dlen;

 if (!pskb_may_pull(skb, sizeof(*ga)))
  return -1;
 ga = (struct garp_attr_hdr *)skb->data;
 if (ga->len < sizeof(*ga))
  return -1;

 if (!pskb_may_pull(skb, ga->len))
  return -1;
 skb_pull(skb, ga->len);
 dlen = sizeof(*ga) - ga->len;

 if (attrtype > app->app->maxattr)
  return 0;

 switch (ga->event) {
 case 129:
  if (dlen != 0)
   return -1;
  garp_gid_event(app, GARP_EVENT_R_LEAVE_EMPTY);
  return 0;
 case 131:
  event = GARP_EVENT_R_JOIN_EMPTY;
  break;
 case 130:
  event = GARP_EVENT_R_JOIN_IN;
  break;
 case 128:
  event = GARP_EVENT_R_LEAVE_EMPTY;
  break;
 case 132:
  event = GARP_EVENT_R_EMPTY;
  break;
 default:
  return 0;
 }

 if (dlen == 0)
  return -1;
 attr = garp_attr_lookup(app, ga->data, dlen, attrtype);
 if (attr == ((void*)0))
  return 0;
 garp_attr_event(app, attr, event);
 return 0;
}
