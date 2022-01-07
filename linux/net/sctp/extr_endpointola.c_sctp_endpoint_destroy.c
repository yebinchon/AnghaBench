
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sock {int dummy; } ;
struct TYPE_3__ {struct sock* sk; int bind_addr; int inqueue; int dead; } ;
struct sctp_endpoint {TYPE_1__ base; int secret_key; int endpoint_shared_keys; struct sctp_endpoint* digest; } ;
struct TYPE_4__ {int * ep; scalar_t__ bind_hash; } ;


 int SCTP_DBG_OBJCNT_DEC (struct sctp_endpoint*) ;
 int WARN (int,char*,struct sctp_endpoint*) ;
 int kfree (struct sctp_endpoint*) ;
 int memset (int ,int ,int) ;
 int sctp_auth_destroy_keys (int *) ;
 int sctp_auth_free (struct sctp_endpoint*) ;
 int sctp_bind_addr_free (int *) ;
 int sctp_inq_free (int *) ;
 int sctp_put_port (struct sock*) ;
 TYPE_2__* sctp_sk (struct sock*) ;
 int sock_put (struct sock*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void sctp_endpoint_destroy(struct sctp_endpoint *ep)
{
 struct sock *sk;

 if (unlikely(!ep->base.dead)) {
  WARN(1, "Attempt to destroy undead endpoint %p!\n", ep);
  return;
 }


 kfree(ep->digest);




 sctp_auth_destroy_keys(&ep->endpoint_shared_keys);
 sctp_auth_free(ep);


 sctp_inq_free(&ep->base.inqueue);
 sctp_bind_addr_free(&ep->base.bind_addr);

 memset(ep->secret_key, 0, sizeof(ep->secret_key));

 sk = ep->base.sk;

 if (sctp_sk(sk)->bind_hash)
  sctp_put_port(sk);

 sctp_sk(sk)->ep = ((void*)0);

 sock_put(sk);

 kfree(ep);
 SCTP_DBG_OBJCNT_DEC(ep);
}
