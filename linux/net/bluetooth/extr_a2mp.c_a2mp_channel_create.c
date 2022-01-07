
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct l2cap_conn {TYPE_1__* hcon; } ;
struct l2cap_chan {int dummy; } ;
struct amp_mgr {struct l2cap_chan* a2mp_chan; } ;
struct TYPE_2__ {scalar_t__ type; } ;


 scalar_t__ ACL_LINK ;
 int BT_DBG (char*,struct amp_mgr*,struct l2cap_chan*) ;
 int BT_ERR (char*) ;
 struct amp_mgr* amp_mgr_create (struct l2cap_conn*,int) ;

struct l2cap_chan *a2mp_channel_create(struct l2cap_conn *conn,
           struct sk_buff *skb)
{
 struct amp_mgr *mgr;

 if (conn->hcon->type != ACL_LINK)
  return ((void*)0);

 mgr = amp_mgr_create(conn, 0);
 if (!mgr) {
  BT_ERR("Could not create AMP manager");
  return ((void*)0);
 }

 BT_DBG("mgr: %p chan %p", mgr, mgr->a2mp_chan);

 return mgr->a2mp_chan;
}
