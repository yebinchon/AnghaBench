
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int in_addr; } ;
struct TYPE_12__ {scalar_t__ nonce; int in_addr; } ;
struct ceph_connection {char* error_msg; TYPE_5__* msgr; TYPE_1__ peer_addr_for_me; TYPE_3__ actual_peer_addr; TYPE_3__ peer_addr; } ;
struct TYPE_11__ {TYPE_3__ addr; } ;
struct TYPE_13__ {TYPE_2__ inst; } ;


 scalar_t__ addr_is_blank (TYPE_3__*) ;
 int addr_port (TYPE_3__*) ;
 int addr_set_port (TYPE_3__*,int) ;
 struct ceph_connection* ceph_pr_addr (TYPE_3__*) ;
 int dout (char*,struct ceph_connection*) ;
 int encode_my_addr (TYPE_5__*) ;
 scalar_t__ le32_to_cpu (scalar_t__) ;
 scalar_t__ memcmp (TYPE_3__*,TYPE_3__*,int) ;
 int memcpy (int *,int *,int) ;
 int pr_warn (char*,struct ceph_connection*,int,struct ceph_connection*,int) ;
 scalar_t__ verify_hello (struct ceph_connection*) ;

__attribute__((used)) static int process_banner(struct ceph_connection *con)
{
 dout("process_banner on %p\n", con);

 if (verify_hello(con) < 0)
  return -1;






 if (memcmp(&con->peer_addr, &con->actual_peer_addr,
     sizeof(con->peer_addr)) != 0 &&
     !(addr_is_blank(&con->actual_peer_addr) &&
       con->actual_peer_addr.nonce == con->peer_addr.nonce)) {
  pr_warn("wrong peer, want %s/%d, got %s/%d\n",
   ceph_pr_addr(&con->peer_addr),
   (int)le32_to_cpu(con->peer_addr.nonce),
   ceph_pr_addr(&con->actual_peer_addr),
   (int)le32_to_cpu(con->actual_peer_addr.nonce));
  con->error_msg = "wrong peer at address";
  return -1;
 }




 if (addr_is_blank(&con->msgr->inst.addr)) {
  int port = addr_port(&con->msgr->inst.addr);

  memcpy(&con->msgr->inst.addr.in_addr,
         &con->peer_addr_for_me.in_addr,
         sizeof(con->peer_addr_for_me.in_addr));
  addr_set_port(&con->msgr->inst.addr, port);
  encode_my_addr(con->msgr);
  dout("process_banner learned my addr is %s\n",
       ceph_pr_addr(&con->msgr->inst.addr));
 }

 return 0;
}
