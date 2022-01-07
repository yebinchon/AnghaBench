
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sock {int sk_write_space; int sk_data_ready; } ;
struct sctp_shared_key {int key_list; } ;
struct TYPE_4__ {int dead; struct sock* sk; int bind_addr; int inqueue; int refcnt; int type; } ;
struct sctp_endpoint {int digest; TYPE_2__ base; int ecn_enable; int reconf_enable; int prsctp_enable; int endpoint_shared_keys; int secret_key; int rcvbuf_policy; int sndbuf_policy; int asocs; scalar_t__ asconf_enable; scalar_t__ auth_enable; } ;
struct TYPE_3__ {int ecn_enable; int reconf_enable; int prsctp_enable; int rcvbuf_policy; int sndbuf_policy; scalar_t__ auth_enable; scalar_t__ addip_enable; } ;
struct net {TYPE_1__ sctp; } ;
typedef int gfp_t ;


 int INIT_LIST_HEAD (int *) ;
 int SCTP_CID_ASCONF ;
 int SCTP_CID_ASCONF_ACK ;
 int SCTP_EP_TYPE_SOCKET ;
 int SCTP_SIGNATURE_SIZE ;
 int SOCK_USE_WRITE_QUEUE ;
 int get_random_bytes (int ,int) ;
 int kfree (int ) ;
 int kzalloc (int ,int ) ;
 int list_add (int *,int *) ;
 int refcount_set (int *,int) ;
 int sctp_auth_ep_add_chunkid (struct sctp_endpoint*,int ) ;
 int sctp_auth_free (struct sctp_endpoint*) ;
 scalar_t__ sctp_auth_init (struct sctp_endpoint*,int ) ;
 struct sctp_shared_key* sctp_auth_shkey_create (int ,int ) ;
 int sctp_bind_addr_init (int *,int ) ;
 int sctp_data_ready ;
 int sctp_endpoint_bh_rcv ;
 int sctp_inq_init (int *) ;
 int sctp_inq_set_th_handler (int *,int ) ;
 int sctp_write_space ;
 int sock_hold (struct sock*) ;
 struct net* sock_net (struct sock*) ;
 int sock_set_flag (struct sock*,int ) ;

__attribute__((used)) static struct sctp_endpoint *sctp_endpoint_init(struct sctp_endpoint *ep,
      struct sock *sk,
      gfp_t gfp)
{
 struct net *net = sock_net(sk);
 struct sctp_shared_key *null_key;

 ep->digest = kzalloc(SCTP_SIGNATURE_SIZE, gfp);
 if (!ep->digest)
  return ((void*)0);

 ep->asconf_enable = net->sctp.addip_enable;
 ep->auth_enable = net->sctp.auth_enable;
 if (ep->auth_enable) {
  if (sctp_auth_init(ep, gfp))
   goto nomem;
  if (ep->asconf_enable) {
   sctp_auth_ep_add_chunkid(ep, SCTP_CID_ASCONF);
   sctp_auth_ep_add_chunkid(ep, SCTP_CID_ASCONF_ACK);
  }
 }



 ep->base.type = SCTP_EP_TYPE_SOCKET;


 refcount_set(&ep->base.refcnt, 1);
 ep->base.dead = 0;


 sctp_inq_init(&ep->base.inqueue);


 sctp_inq_set_th_handler(&ep->base.inqueue, sctp_endpoint_bh_rcv);


 sctp_bind_addr_init(&ep->base.bind_addr, 0);


 INIT_LIST_HEAD(&ep->asocs);


 ep->sndbuf_policy = net->sctp.sndbuf_policy;

 sk->sk_data_ready = sctp_data_ready;
 sk->sk_write_space = sctp_write_space;
 sock_set_flag(sk, SOCK_USE_WRITE_QUEUE);


 ep->rcvbuf_policy = net->sctp.rcvbuf_policy;


 get_random_bytes(ep->secret_key, sizeof(ep->secret_key));


 INIT_LIST_HEAD(&ep->endpoint_shared_keys);
 null_key = sctp_auth_shkey_create(0, gfp);
 if (!null_key)
  goto nomem_shkey;

 list_add(&null_key->key_list, &ep->endpoint_shared_keys);




 ep->prsctp_enable = net->sctp.prsctp_enable;
 ep->reconf_enable = net->sctp.reconf_enable;
 ep->ecn_enable = net->sctp.ecn_enable;


 ep->base.sk = sk;
 sock_hold(ep->base.sk);

 return ep;

nomem_shkey:
 sctp_auth_free(ep);
nomem:
 kfree(ep->digest);
 return ((void*)0);

}
