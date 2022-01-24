#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct socket {scalar_t__ state; } ;
struct sockaddr_dn {scalar_t__ sdn_family; int sdn_flags; } ;
struct sock {int /*<<< orphan*/  sk_route_caps; int /*<<< orphan*/  sk_dst_cache; int /*<<< orphan*/  sk_bound_dev_if; struct socket* sk_socket; } ;
struct flowidn {int /*<<< orphan*/  flowidn_proto; void* saddr; void* daddr; int /*<<< orphan*/  flowidn_oif; } ;
struct dst_entry {TYPE_1__* dev; } ;
struct dn_scp {scalar_t__ state; int /*<<< orphan*/  segsize_loc; int /*<<< orphan*/  addr; int /*<<< orphan*/  peer; } ;
typedef  int /*<<< orphan*/  fld ;
struct TYPE_2__ {int /*<<< orphan*/  features; } ;

/* Variables and functions */
 scalar_t__ AF_DECnet ; 
 int /*<<< orphan*/  DNPROTO_NSP ; 
 scalar_t__ DN_CC ; 
 scalar_t__ DN_CI ; 
 scalar_t__ DN_O ; 
 scalar_t__ DN_RUN ; 
 struct dn_scp* FUNC0 (struct sock*) ; 
 int ECONNREFUSED ; 
 int EHOSTUNREACH ; 
 int EINPROGRESS ; 
 int EINVAL ; 
 int EISCONN ; 
 int /*<<< orphan*/  NSP_CI ; 
 int SDF_WILD ; 
 int /*<<< orphan*/  SOCK_ZAPPED ; 
 scalar_t__ SS_CONNECTED ; 
 scalar_t__ SS_CONNECTING ; 
 scalar_t__ SS_UNCONNECTED ; 
 struct dst_entry* FUNC1 (struct sock*) ; 
 int FUNC2 (struct socket*) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,struct flowidn*,struct sock*,int) ; 
 void* FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct flowidn*,struct dn_scp*) ; 
 int FUNC7 (struct sock*,long*) ; 
 int /*<<< orphan*/  FUNC8 (struct dst_entry*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,struct sockaddr_dn*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct flowidn*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC11 (struct sock*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC12(struct sock *sk, struct sockaddr_dn *addr, int addrlen, long *timeo, int flags)
{
	struct socket *sock = sk->sk_socket;
	struct dn_scp *scp = FUNC0(sk);
	int err = -EISCONN;
	struct flowidn fld;
	struct dst_entry *dst;

	if (sock->state == SS_CONNECTED)
		goto out;

	if (sock->state == SS_CONNECTING) {
		err = 0;
		if (scp->state == DN_RUN) {
			sock->state = SS_CONNECTED;
			goto out;
		}
		err = -ECONNREFUSED;
		if (scp->state != DN_CI && scp->state != DN_CC) {
			sock->state = SS_UNCONNECTED;
			goto out;
		}
		return FUNC7(sk, timeo);
	}

	err = -EINVAL;
	if (scp->state != DN_O)
		goto out;

	if (addr == NULL || addrlen != sizeof(struct sockaddr_dn))
		goto out;
	if (addr->sdn_family != AF_DECnet)
		goto out;
	if (addr->sdn_flags & SDF_WILD)
		goto out;

	if (FUNC11(sk, SOCK_ZAPPED)) {
		err = FUNC2(sk->sk_socket);
		if (err)
			goto out;
	}

	FUNC9(&scp->peer, addr, sizeof(struct sockaddr_dn));

	err = -EHOSTUNREACH;
	FUNC10(&fld, 0, sizeof(fld));
	fld.flowidn_oif = sk->sk_bound_dev_if;
	fld.daddr = FUNC5(&scp->peer);
	fld.saddr = FUNC5(&scp->addr);
	FUNC6(&fld, scp);
	fld.flowidn_proto = DNPROTO_NSP;
	if (FUNC4(&sk->sk_dst_cache, &fld, sk, flags) < 0)
		goto out;
	dst = FUNC1(sk);
	sk->sk_route_caps = dst->dev->features;
	sock->state = SS_CONNECTING;
	scp->state = DN_CI;
	scp->segsize_loc = FUNC8(dst);

	FUNC3(sk, NSP_CI);
	err = -EINPROGRESS;
	if (*timeo) {
		err = FUNC7(sk, timeo);
	}
out:
	return err;
}