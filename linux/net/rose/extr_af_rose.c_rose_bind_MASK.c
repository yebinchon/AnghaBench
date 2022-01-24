#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct socket {struct sock* sk; } ;
struct sockaddr_rose {scalar_t__ srose_family; int srose_ndigis; int /*<<< orphan*/  srose_digi; int /*<<< orphan*/  srose_addr; int /*<<< orphan*/  srose_call; } ;
struct sockaddr {int dummy; } ;
struct sock {int dummy; } ;
struct rose_sock {int source_ndigis; int /*<<< orphan*/ * source_digis; struct net_device* device; int /*<<< orphan*/  source_addr; int /*<<< orphan*/  source_call; } ;
struct net_device {int dummy; } ;
struct full_sockaddr_rose {int /*<<< orphan*/ * srose_digis; } ;
struct TYPE_4__ {int /*<<< orphan*/  call; } ;
typedef  TYPE_1__ ax25_uid_assoc ;
typedef  int /*<<< orphan*/  ax25_address ;

/* Variables and functions */
 scalar_t__ AF_ROSE ; 
 int /*<<< orphan*/  CAP_NET_BIND_SERVICE ; 
 int EACCES ; 
 int EADDRNOTAVAIL ; 
 int EINVAL ; 
 unsigned int ROSE_MAX_DIGIS ; 
 int /*<<< orphan*/  SOCK_ZAPPED ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ ax25_uid_policy ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 struct net_device* FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct sock*) ; 
 struct rose_sock* FUNC7 (struct sock*) ; 
 int /*<<< orphan*/  FUNC8 (struct sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct sock*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct socket *sock, struct sockaddr *uaddr, int addr_len)
{
	struct sock *sk = sock->sk;
	struct rose_sock *rose = FUNC7(sk);
	struct sockaddr_rose *addr = (struct sockaddr_rose *)uaddr;
	struct net_device *dev;
	ax25_address *source;
	ax25_uid_assoc *user;
	int n;

	if (!FUNC8(sk, SOCK_ZAPPED))
		return -EINVAL;

	if (addr_len != sizeof(struct sockaddr_rose) && addr_len != sizeof(struct full_sockaddr_rose))
		return -EINVAL;

	if (addr->srose_family != AF_ROSE)
		return -EINVAL;

	if (addr_len == sizeof(struct sockaddr_rose) && addr->srose_ndigis > 1)
		return -EINVAL;

	if ((unsigned int) addr->srose_ndigis > ROSE_MAX_DIGIS)
		return -EINVAL;

	if ((dev = FUNC5(&addr->srose_addr)) == NULL)
		return -EADDRNOTAVAIL;

	source = &addr->srose_call;

	user = FUNC0(FUNC3());
	if (user) {
		rose->source_call = user->call;
		FUNC1(user);
	} else {
		if (ax25_uid_policy && !FUNC2(CAP_NET_BIND_SERVICE)) {
			FUNC4(dev);
			return -EACCES;
		}
		rose->source_call   = *source;
	}

	rose->source_addr   = addr->srose_addr;
	rose->device        = dev;
	rose->source_ndigis = addr->srose_ndigis;

	if (addr_len == sizeof(struct full_sockaddr_rose)) {
		struct full_sockaddr_rose *full_addr = (struct full_sockaddr_rose *)uaddr;
		for (n = 0 ; n < addr->srose_ndigis ; n++)
			rose->source_digis[n] = full_addr->srose_digis[n];
	} else {
		if (rose->source_ndigis == 1) {
			rose->source_digis[0] = addr->srose_digi;
		}
	}

	FUNC6(sk);

	FUNC9(sk, SOCK_ZAPPED);

	return 0;
}