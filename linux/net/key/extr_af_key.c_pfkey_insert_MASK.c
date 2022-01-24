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
struct sock {int dummy; } ;
struct netns_pfkey {int /*<<< orphan*/  table; } ;
struct net {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct netns_pfkey* FUNC2 (struct net*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pfkey_mutex ; 
 int /*<<< orphan*/  pfkey_net_id ; 
 int /*<<< orphan*/  FUNC3 (struct sock*,int /*<<< orphan*/ *) ; 
 struct net* FUNC4 (struct sock*) ; 

__attribute__((used)) static void FUNC5(struct sock *sk)
{
	struct net *net = FUNC4(sk);
	struct netns_pfkey *net_pfkey = FUNC2(net, pfkey_net_id);

	FUNC0(&pfkey_mutex);
	FUNC3(sk, &net_pfkey->table);
	FUNC1(&pfkey_mutex);
}