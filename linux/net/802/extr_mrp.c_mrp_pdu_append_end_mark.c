
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mrp_applicant {int pdu; } ;
typedef int __be16 ;


 int MRP_END_MARK ;
 int * __skb_put (int ,int) ;
 int put_unaligned (int ,int *) ;
 int skb_tailroom (int ) ;

__attribute__((used)) static int mrp_pdu_append_end_mark(struct mrp_applicant *app)
{
 __be16 *endmark;

 if (skb_tailroom(app->pdu) < sizeof(*endmark))
  return -1;
 endmark = __skb_put(app->pdu, sizeof(*endmark));
 put_unaligned(MRP_END_MARK, endmark);
 return 0;
}
