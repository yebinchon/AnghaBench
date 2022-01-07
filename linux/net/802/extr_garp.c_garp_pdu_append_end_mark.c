
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct garp_applicant {int pdu; } ;


 int GARP_END_MARK ;
 int __skb_put_u8 (int ,int ) ;
 int skb_tailroom (int ) ;

__attribute__((used)) static int garp_pdu_append_end_mark(struct garp_applicant *app)
{
 if (skb_tailroom(app->pdu) < sizeof(u8))
  return -1;
 __skb_put_u8(app->pdu, GARP_END_MARK);
 return 0;
}
