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
struct sock {int /*<<< orphan*/  sk_wmem_alloc; int /*<<< orphan*/  sk_rmem_alloc; int /*<<< orphan*/  sk_receive_queue; } ;
struct netns_pfkey {int /*<<< orphan*/  socks_nr; } ;
struct net {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  SOCK_DEAD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct netns_pfkey* FUNC3 (struct net*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pfkey_net_id ; 
 int /*<<< orphan*/  FUNC4 (struct sock*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,struct sock*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct sock*,int /*<<< orphan*/ ) ; 
 struct net* FUNC10 (struct sock*) ; 

__attribute__((used)) static void FUNC11(struct sock *sk)
{
	struct net *net = FUNC10(sk);
	struct netns_pfkey *net_pfkey = FUNC3(net, pfkey_net_id);

	FUNC5(FUNC4(sk));
	FUNC8(&sk->sk_receive_queue);

	if (!FUNC9(sk, SOCK_DEAD)) {
		FUNC6("Attempt to release alive pfkey socket: %p\n", sk);
		return;
	}

	FUNC0(FUNC2(&sk->sk_rmem_alloc));
	FUNC0(FUNC7(&sk->sk_wmem_alloc));

	FUNC1(&net_pfkey->socks_nr);
}