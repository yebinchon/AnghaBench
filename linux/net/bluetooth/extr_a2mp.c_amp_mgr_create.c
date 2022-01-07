
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct l2cap_conn {TYPE_1__* hcon; } ;
struct l2cap_chan {struct amp_mgr* data; } ;
struct amp_mgr {int list; int amp_ctrls_lock; int amp_ctrls; int kref; struct l2cap_chan* a2mp_chan; struct l2cap_conn* l2cap_conn; } ;
struct TYPE_2__ {struct amp_mgr* amp_mgr; } ;


 int BT_DBG (char*,struct l2cap_conn*,struct amp_mgr*) ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 struct l2cap_chan* a2mp_chan_open (struct l2cap_conn*,int) ;
 int amp_mgr_list ;
 int amp_mgr_list_lock ;
 int kfree (struct amp_mgr*) ;
 int kref_init (int *) ;
 struct amp_mgr* kzalloc (int,int ) ;
 int list_add (int *,int *) ;
 int mutex_init (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static struct amp_mgr *amp_mgr_create(struct l2cap_conn *conn, bool locked)
{
 struct amp_mgr *mgr;
 struct l2cap_chan *chan;

 mgr = kzalloc(sizeof(*mgr), GFP_KERNEL);
 if (!mgr)
  return ((void*)0);

 BT_DBG("conn %p mgr %p", conn, mgr);

 mgr->l2cap_conn = conn;

 chan = a2mp_chan_open(conn, locked);
 if (!chan) {
  kfree(mgr);
  return ((void*)0);
 }

 mgr->a2mp_chan = chan;
 chan->data = mgr;

 conn->hcon->amp_mgr = mgr;

 kref_init(&mgr->kref);


 INIT_LIST_HEAD(&mgr->amp_ctrls);
 mutex_init(&mgr->amp_ctrls_lock);

 mutex_lock(&amp_mgr_list_lock);
 list_add(&mgr->list, &amp_mgr_list);
 mutex_unlock(&amp_mgr_list_lock);

 return mgr;
}
