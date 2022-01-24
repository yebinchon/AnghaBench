#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct sockaddr_ieee802154 {scalar_t__ family; int /*<<< orphan*/  addr; } ;
struct sockaddr {int dummy; } ;
struct sock {int dummy; } ;
struct dgram_sock {int connected; int /*<<< orphan*/  dst_addr; int /*<<< orphan*/  bound; } ;

/* Variables and functions */
 scalar_t__ AF_IEEE802154 ; 
 int EINVAL ; 
 int ENETUNREACH ; 
 struct dgram_sock* FUNC0 (struct sock*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*) ; 

__attribute__((used)) static int FUNC4(struct sock *sk, struct sockaddr *uaddr,
			 int len)
{
	struct sockaddr_ieee802154 *addr = (struct sockaddr_ieee802154 *)uaddr;
	struct dgram_sock *ro = FUNC0(sk);
	int err = 0;

	if (len < sizeof(*addr))
		return -EINVAL;

	if (addr->family != AF_IEEE802154)
		return -EINVAL;

	FUNC2(sk);

	if (!ro->bound) {
		err = -ENETUNREACH;
		goto out;
	}

	FUNC1(&ro->dst_addr, &addr->addr);
	ro->connected = 1;

out:
	FUNC3(sk);
	return err;
}