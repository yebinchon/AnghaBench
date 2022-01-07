
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sk_buff {scalar_t__ data; } ;
struct rfcomm_session {int dummy; } ;
struct rfcomm_rls {int status; int dlci; } ;


 int BT_DBG (char*,int ,int,int ) ;
 int __get_dlci (int ) ;
 int rfcomm_send_rls (struct rfcomm_session*,int ,int ,int ) ;

__attribute__((used)) static int rfcomm_recv_rls(struct rfcomm_session *s, int cr, struct sk_buff *skb)
{
 struct rfcomm_rls *rls = (void *) skb->data;
 u8 dlci = __get_dlci(rls->dlci);

 BT_DBG("dlci %d cr %d status 0x%x", dlci, cr, rls->status);

 if (!cr)
  return 0;





 rfcomm_send_rls(s, 0, dlci, rls->status);

 return 0;
}
