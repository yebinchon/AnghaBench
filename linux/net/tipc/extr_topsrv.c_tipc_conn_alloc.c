
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tipc_topsrv {int idr_lock; int idr_in_use; int conn_idr; } ;
struct tipc_conn {int conid; struct tipc_topsrv* server; int flags; int rwork; int swork; int sub_lock; int outqueue_lock; int sub_list; int outqueue; int kref; } ;


 int CF_CONNECTED ;
 int ENOMEM ;
 struct tipc_conn* ERR_PTR (int ) ;
 int GFP_ATOMIC ;
 int INIT_LIST_HEAD (int *) ;
 int INIT_WORK (int *,int ) ;
 int idr_alloc (int *,struct tipc_conn*,int ,int ,int ) ;
 int kfree (struct tipc_conn*) ;
 int kref_init (int *) ;
 struct tipc_conn* kzalloc (int,int ) ;
 int set_bit (int ,int *) ;
 int spin_lock_bh (int *) ;
 int spin_lock_init (int *) ;
 int spin_unlock_bh (int *) ;
 int tipc_conn_recv_work ;
 int tipc_conn_send_work ;

__attribute__((used)) static struct tipc_conn *tipc_conn_alloc(struct tipc_topsrv *s)
{
 struct tipc_conn *con;
 int ret;

 con = kzalloc(sizeof(*con), GFP_ATOMIC);
 if (!con)
  return ERR_PTR(-ENOMEM);

 kref_init(&con->kref);
 INIT_LIST_HEAD(&con->outqueue);
 INIT_LIST_HEAD(&con->sub_list);
 spin_lock_init(&con->outqueue_lock);
 spin_lock_init(&con->sub_lock);
 INIT_WORK(&con->swork, tipc_conn_send_work);
 INIT_WORK(&con->rwork, tipc_conn_recv_work);

 spin_lock_bh(&s->idr_lock);
 ret = idr_alloc(&s->conn_idr, con, 0, 0, GFP_ATOMIC);
 if (ret < 0) {
  kfree(con);
  spin_unlock_bh(&s->idr_lock);
  return ERR_PTR(-ENOMEM);
 }
 con->conid = ret;
 s->idr_in_use++;
 spin_unlock_bh(&s->idr_lock);

 set_bit(CF_CONNECTED, &con->flags);
 con->server = s;

 return con;
}
