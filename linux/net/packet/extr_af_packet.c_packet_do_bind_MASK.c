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
struct sock {int /*<<< orphan*/  (* sk_error_report ) (struct sock*) ;int /*<<< orphan*/  sk_err; } ;
struct TYPE_2__ {scalar_t__ type; struct net_device* dev; } ;
struct packet_sock {int ifindex; int /*<<< orphan*/  bind_lock; TYPE_1__ prot_hook; scalar_t__ num; scalar_t__ running; scalar_t__ fanout; } ;
struct net_device {int ifindex; int flags; } ;
typedef  scalar_t__ __be16 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int EINVAL ; 
 int /*<<< orphan*/  ENETDOWN ; 
 int ENODEV ; 
 int IFF_UP ; 
 int /*<<< orphan*/  SOCK_DEAD ; 
 int /*<<< orphan*/  FUNC1 (struct sock*,int) ; 
 struct net_device* FUNC2 (int /*<<< orphan*/ ,int) ; 
 struct net_device* FUNC3 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct sock*) ; 
 int /*<<< orphan*/  FUNC7 (struct packet_sock*,struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct packet_sock*) ; 
 struct packet_sock* FUNC9 (struct sock*) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (struct sock*) ; 
 int /*<<< orphan*/  FUNC13 (struct sock*) ; 
 int /*<<< orphan*/  FUNC14 (struct sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct sock*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (struct sock*) ; 
 scalar_t__ FUNC19 (int) ; 

__attribute__((used)) static int FUNC20(struct sock *sk, const char *name, int ifindex,
			  __be16 proto)
{
	struct packet_sock *po = FUNC9(sk);
	struct net_device *dev_curr;
	__be16 proto_curr;
	bool need_rehook;
	struct net_device *dev = NULL;
	int ret = 0;
	bool unlisted = false;

	FUNC6(sk);
	FUNC16(&po->bind_lock);
	FUNC10();

	if (po->fanout) {
		ret = -EINVAL;
		goto out_unlock;
	}

	if (name) {
		dev = FUNC3(FUNC15(sk), name);
		if (!dev) {
			ret = -ENODEV;
			goto out_unlock;
		}
	} else if (ifindex) {
		dev = FUNC2(FUNC15(sk), ifindex);
		if (!dev) {
			ret = -ENODEV;
			goto out_unlock;
		}
	}

	if (dev)
		FUNC4(dev);

	proto_curr = po->prot_hook.type;
	dev_curr = po->prot_hook.dev;

	need_rehook = proto_curr != proto || dev_curr != dev;

	if (need_rehook) {
		if (po->running) {
			FUNC11();
			/* prevents packet_notifier() from calling
			 * register_prot_hook()
			 */
			po->num = 0;
			FUNC1(sk, true);
			FUNC10();
			dev_curr = po->prot_hook.dev;
			if (dev)
				unlisted = !FUNC2(FUNC15(sk),
								 dev->ifindex);
		}

		FUNC0(po->running);
		po->num = proto;
		po->prot_hook.type = proto;

		if (FUNC19(unlisted)) {
			FUNC5(dev);
			po->prot_hook.dev = NULL;
			po->ifindex = -1;
			FUNC8(po);
		} else {
			po->prot_hook.dev = dev;
			po->ifindex = dev ? dev->ifindex : 0;
			FUNC7(po, dev);
		}
	}
	if (dev_curr)
		FUNC5(dev_curr);

	if (proto == 0 || !need_rehook)
		goto out_unlock;

	if (!unlisted && (!dev || (dev->flags & IFF_UP))) {
		FUNC12(sk);
	} else {
		sk->sk_err = ENETDOWN;
		if (!FUNC14(sk, SOCK_DEAD))
			sk->sk_error_report(sk);
	}

out_unlock:
	FUNC11();
	FUNC17(&po->bind_lock);
	FUNC13(sk);
	return ret;
}