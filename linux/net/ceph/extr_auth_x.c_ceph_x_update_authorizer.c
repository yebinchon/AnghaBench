
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ceph_x_ticket_handler {scalar_t__ secret_id; } ;
struct ceph_x_authorizer {scalar_t__ secret_id; int service; } ;
struct ceph_auth_handshake {scalar_t__ authorizer; } ;
struct ceph_auth_client {int dummy; } ;


 scalar_t__ IS_ERR (struct ceph_x_ticket_handler*) ;
 int PTR_ERR (struct ceph_x_ticket_handler*) ;
 int ceph_x_build_authorizer (struct ceph_auth_client*,struct ceph_x_ticket_handler*,struct ceph_x_authorizer*) ;
 int dout (char*,int ,scalar_t__,scalar_t__) ;
 struct ceph_x_ticket_handler* get_ticket_handler (struct ceph_auth_client*,int) ;

__attribute__((used)) static int ceph_x_update_authorizer(
 struct ceph_auth_client *ac, int peer_type,
 struct ceph_auth_handshake *auth)
{
 struct ceph_x_authorizer *au;
 struct ceph_x_ticket_handler *th;

 th = get_ticket_handler(ac, peer_type);
 if (IS_ERR(th))
  return PTR_ERR(th);

 au = (struct ceph_x_authorizer *)auth->authorizer;
 if (au->secret_id < th->secret_id) {
  dout("ceph_x_update_authorizer service %u secret %llu < %llu\n",
       au->service, au->secret_id, th->secret_id);
  return ceph_x_build_authorizer(ac, th, au);
 }
 return 0;
}
