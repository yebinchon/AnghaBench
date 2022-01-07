
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* u8 ;
struct mrp_msg_hdr {void* attrlen; void* attrtype; } ;
struct mrp_applicant {int pdu; } ;
struct TYPE_2__ {struct mrp_msg_hdr* mh; int * vah; } ;


 struct mrp_msg_hdr* __skb_put (int ,int) ;
 TYPE_1__* mrp_cb (int ) ;
 scalar_t__ mrp_pdu_append_end_mark (struct mrp_applicant*) ;
 int skb_tailroom (int ) ;

__attribute__((used)) static int mrp_pdu_append_msg_hdr(struct mrp_applicant *app,
      u8 attrtype, u8 attrlen)
{
 struct mrp_msg_hdr *mh;

 if (mrp_cb(app->pdu)->mh) {
  if (mrp_pdu_append_end_mark(app) < 0)
   return -1;
  mrp_cb(app->pdu)->mh = ((void*)0);
  mrp_cb(app->pdu)->vah = ((void*)0);
 }

 if (skb_tailroom(app->pdu) < sizeof(*mh))
  return -1;
 mh = __skb_put(app->pdu, sizeof(*mh));
 mh->attrtype = attrtype;
 mh->attrlen = attrlen;
 mrp_cb(app->pdu)->mh = mh;
 return 0;
}
