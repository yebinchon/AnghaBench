#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct sock {int /*<<< orphan*/  sk_write_space; int /*<<< orphan*/  sk_data_ready; } ;
struct sctp_shared_key {int /*<<< orphan*/  key_list; } ;
struct TYPE_4__ {int dead; struct sock* sk; int /*<<< orphan*/  bind_addr; int /*<<< orphan*/  inqueue; int /*<<< orphan*/  refcnt; int /*<<< orphan*/  type; } ;
struct sctp_endpoint {int /*<<< orphan*/  digest; TYPE_2__ base; int /*<<< orphan*/  ecn_enable; int /*<<< orphan*/  reconf_enable; int /*<<< orphan*/  prsctp_enable; int /*<<< orphan*/  endpoint_shared_keys; int /*<<< orphan*/  secret_key; int /*<<< orphan*/  rcvbuf_policy; int /*<<< orphan*/  sndbuf_policy; int /*<<< orphan*/  asocs; scalar_t__ asconf_enable; scalar_t__ auth_enable; } ;
struct TYPE_3__ {int /*<<< orphan*/  ecn_enable; int /*<<< orphan*/  reconf_enable; int /*<<< orphan*/  prsctp_enable; int /*<<< orphan*/  rcvbuf_policy; int /*<<< orphan*/  sndbuf_policy; scalar_t__ auth_enable; scalar_t__ addip_enable; } ;
struct net {TYPE_1__ sctp; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SCTP_CID_ASCONF ; 
 int /*<<< orphan*/  SCTP_CID_ASCONF_ACK ; 
 int /*<<< orphan*/  SCTP_EP_TYPE_SOCKET ; 
 int /*<<< orphan*/  SCTP_SIGNATURE_SIZE ; 
 int /*<<< orphan*/  SOCK_USE_WRITE_QUEUE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (struct sctp_endpoint*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct sctp_endpoint*) ; 
 scalar_t__ FUNC8 (struct sctp_endpoint*,int /*<<< orphan*/ ) ; 
 struct sctp_shared_key* FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sctp_data_ready ; 
 int /*<<< orphan*/  sctp_endpoint_bh_rcv ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sctp_write_space ; 
 int /*<<< orphan*/  FUNC13 (struct sock*) ; 
 struct net* FUNC14 (struct sock*) ; 
 int /*<<< orphan*/  FUNC15 (struct sock*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct sctp_endpoint *FUNC16(struct sctp_endpoint *ep,
						struct sock *sk,
						gfp_t gfp)
{
	struct net *net = FUNC14(sk);
	struct sctp_shared_key *null_key;

	ep->digest = FUNC3(SCTP_SIGNATURE_SIZE, gfp);
	if (!ep->digest)
		return NULL;

	ep->asconf_enable = net->sctp.addip_enable;
	ep->auth_enable = net->sctp.auth_enable;
	if (ep->auth_enable) {
		if (FUNC8(ep, gfp))
			goto nomem;
		if (ep->asconf_enable) {
			FUNC6(ep, SCTP_CID_ASCONF);
			FUNC6(ep, SCTP_CID_ASCONF_ACK);
		}
	}

	/* Initialize the base structure. */
	/* What type of endpoint are we?  */
	ep->base.type = SCTP_EP_TYPE_SOCKET;

	/* Initialize the basic object fields. */
	FUNC5(&ep->base.refcnt, 1);
	ep->base.dead = false;

	/* Create an input queue.  */
	FUNC11(&ep->base.inqueue);

	/* Set its top-half handler */
	FUNC12(&ep->base.inqueue, sctp_endpoint_bh_rcv);

	/* Initialize the bind addr area */
	FUNC10(&ep->base.bind_addr, 0);

	/* Create the lists of associations.  */
	FUNC0(&ep->asocs);

	/* Use SCTP specific send buffer space queues.  */
	ep->sndbuf_policy = net->sctp.sndbuf_policy;

	sk->sk_data_ready = sctp_data_ready;
	sk->sk_write_space = sctp_write_space;
	FUNC15(sk, SOCK_USE_WRITE_QUEUE);

	/* Get the receive buffer policy for this endpoint */
	ep->rcvbuf_policy = net->sctp.rcvbuf_policy;

	/* Initialize the secret key used with cookie. */
	FUNC1(ep->secret_key, sizeof(ep->secret_key));

	/* SCTP-AUTH extensions*/
	FUNC0(&ep->endpoint_shared_keys);
	null_key = FUNC9(0, gfp);
	if (!null_key)
		goto nomem_shkey;

	FUNC4(&null_key->key_list, &ep->endpoint_shared_keys);

	/* Add the null key to the endpoint shared keys list and
	 * set the hmcas and chunks pointers.
	 */
	ep->prsctp_enable = net->sctp.prsctp_enable;
	ep->reconf_enable = net->sctp.reconf_enable;
	ep->ecn_enable = net->sctp.ecn_enable;

	/* Remember who we are attached to.  */
	ep->base.sk = sk;
	FUNC13(ep->base.sk);

	return ep;

nomem_shkey:
	FUNC7(ep);
nomem:
	FUNC2(ep->digest);
	return NULL;

}