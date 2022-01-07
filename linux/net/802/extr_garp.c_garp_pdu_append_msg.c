
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* u8 ;
struct garp_msg_hdr {void* attrtype; } ;
struct garp_applicant {int pdu; } ;
struct TYPE_2__ {void* cur_type; } ;


 struct garp_msg_hdr* __skb_put (int ,int) ;
 TYPE_1__* garp_cb (int ) ;
 int skb_tailroom (int ) ;

__attribute__((used)) static int garp_pdu_append_msg(struct garp_applicant *app, u8 attrtype)
{
 struct garp_msg_hdr *gm;

 if (skb_tailroom(app->pdu) < sizeof(*gm))
  return -1;
 gm = __skb_put(app->pdu, sizeof(*gm));
 gm->attrtype = attrtype;
 garp_cb(app->pdu)->cur_type = attrtype;
 return 0;
}
