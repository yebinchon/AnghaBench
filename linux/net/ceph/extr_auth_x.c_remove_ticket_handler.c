
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ceph_x_ticket_handler {scalar_t__ ticket_blob; int session_key; int node; int service; } ;
struct ceph_x_info {int ticket_handlers; } ;
struct ceph_auth_client {struct ceph_x_info* private; } ;


 int ceph_buffer_put (scalar_t__) ;
 int ceph_crypto_key_destroy (int *) ;
 int dout (char*,struct ceph_x_ticket_handler*,int ) ;
 int kfree (struct ceph_x_ticket_handler*) ;
 int rb_erase (int *,int *) ;

__attribute__((used)) static void remove_ticket_handler(struct ceph_auth_client *ac,
      struct ceph_x_ticket_handler *th)
{
 struct ceph_x_info *xi = ac->private;

 dout("remove_ticket_handler %p %d\n", th, th->service);
 rb_erase(&th->node, &xi->ticket_handlers);
 ceph_crypto_key_destroy(&th->session_key);
 if (th->ticket_blob)
  ceph_buffer_put(th->ticket_blob);
 kfree(th);
}
