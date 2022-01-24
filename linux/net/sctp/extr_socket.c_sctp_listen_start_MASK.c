#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct sock {int sk_max_ack_backlog; } ;
struct sctp_sock {char* sctp_hmac_alg; struct crypto_shash* hmac; struct sctp_endpoint* ep; } ;
struct TYPE_4__ {int /*<<< orphan*/  port; } ;
struct TYPE_5__ {TYPE_1__ bind_addr; } ;
struct sctp_endpoint {TYPE_2__ base; } ;
struct crypto_shash {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  inet_num; } ;

/* Variables and functions */
 int EADDRINUSE ; 
 int EAGAIN ; 
 int ENOSYS ; 
 scalar_t__ FUNC0 (struct crypto_shash*) ; 
 int /*<<< orphan*/  FUNC1 (struct crypto_shash*) ; 
 int /*<<< orphan*/  SCTP_SS_CLOSED ; 
 int /*<<< orphan*/  SCTP_SS_LISTENING ; 
 struct crypto_shash* FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC3 (struct sock*) ; 
 int /*<<< orphan*/  FUNC4 (struct sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct sock*) ; 
 scalar_t__ FUNC7 (struct sock*,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct sctp_endpoint*) ; 
 struct sctp_sock* FUNC9 (struct sock*) ; 
 int /*<<< orphan*/  FUNC10 (char*,char*,char*) ; 

__attribute__((used)) static int FUNC11(struct sock *sk, int backlog)
{
	struct sctp_sock *sp = FUNC9(sk);
	struct sctp_endpoint *ep = sp->ep;
	struct crypto_shash *tfm = NULL;
	char alg[32];

	/* Allocate HMAC for generating cookie. */
	if (!sp->hmac && sp->sctp_hmac_alg) {
		FUNC10(alg, "hmac(%s)", sp->sctp_hmac_alg);
		tfm = FUNC2(alg, 0, 0);
		if (FUNC0(tfm)) {
			FUNC5("failed to load transform for %s: %ld\n",
					     sp->sctp_hmac_alg, FUNC1(tfm));
			return -ENOSYS;
		}
		FUNC9(sk)->hmac = tfm;
	}

	/*
	 * If a bind() or sctp_bindx() is not called prior to a listen()
	 * call that allows new associations to be accepted, the system
	 * picks an ephemeral port and will choose an address set equivalent
	 * to binding with a wildcard address.
	 *
	 * This is not currently spelled out in the SCTP sockets
	 * extensions draft, but follows the practice as seen in TCP
	 * sockets.
	 *
	 */
	FUNC4(sk, SCTP_SS_LISTENING);
	if (!ep->base.bind_addr.port) {
		if (FUNC6(sk))
			return -EAGAIN;
	} else {
		if (FUNC7(sk, FUNC3(sk)->inet_num)) {
			FUNC4(sk, SCTP_SS_CLOSED);
			return -EADDRINUSE;
		}
	}

	sk->sk_max_ack_backlog = backlog;
	return FUNC8(ep);
}