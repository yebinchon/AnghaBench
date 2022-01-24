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
struct net {int /*<<< orphan*/  user_ns; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_NET_ADMIN ; 
 int /*<<< orphan*/  EACCES ; 
 int /*<<< orphan*/  EINVAL ; 
 struct net* FUNC0 (int /*<<< orphan*/ ) ; 
 struct net* FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct net*) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sock*) ; 

struct net *FUNC5(struct sock *sk, int netnsid)
{
	struct net *net;

	net = FUNC1(FUNC4(sk), netnsid);
	if (!net)
		return FUNC0(-EINVAL);

	/* For now, the caller is required to have CAP_NET_ADMIN in
	 * the user namespace owning the target net ns.
	 */
	if (!FUNC3(sk, net->user_ns, CAP_NET_ADMIN)) {
		FUNC2(net);
		return FUNC0(-EACCES);
	}
	return net;
}