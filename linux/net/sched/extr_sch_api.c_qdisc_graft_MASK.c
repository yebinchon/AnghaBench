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
typedef  int /*<<< orphan*/  u32 ;
struct sk_buff {int dummy; } ;
struct nlmsghdr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct netdev_queue {int dummy; } ;
struct net_device {unsigned int num_tx_queues; int flags; struct Qdisc* qdisc; } ;
struct net {int dummy; } ;
struct Qdisc_class_ops {int (* graft ) (struct Qdisc*,unsigned long,struct Qdisc*,struct Qdisc**,struct netlink_ext_ack*) ;unsigned long (* find ) (struct Qdisc*,int /*<<< orphan*/ ) ;} ;
struct Qdisc {int flags; TYPE_1__* ops; } ;
struct TYPE_2__ {struct Qdisc_class_ops* cl_ops; int /*<<< orphan*/  (* attach ) (struct Qdisc*) ;} ;

/* Variables and functions */
 int ENOENT ; 
 int EOPNOTSUPP ; 
 int IFF_UP ; 
 int /*<<< orphan*/  FUNC0 (struct netlink_ext_ack*,char*) ; 
 int TCQ_F_INGRESS ; 
 int TCQ_F_NOLOCK ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 struct Qdisc* FUNC3 (struct netdev_queue*,struct Qdisc*) ; 
 struct netdev_queue* FUNC4 (struct net_device*) ; 
 struct net* FUNC5 (struct net_device*) ; 
 struct netdev_queue* FUNC6 (struct net_device*,unsigned int) ; 
 struct Qdisc noop_qdisc ; 
 int /*<<< orphan*/  FUNC7 (struct net*,struct sk_buff*,struct nlmsghdr*,int /*<<< orphan*/ ,struct Qdisc*,struct Qdisc*) ; 
 int /*<<< orphan*/  FUNC8 (struct Qdisc*) ; 
 int /*<<< orphan*/  FUNC9 (struct net_device*,struct Qdisc*,struct Qdisc*,struct netlink_ext_ack*) ; 
 int /*<<< orphan*/  FUNC10 (struct Qdisc*) ; 
 int /*<<< orphan*/  FUNC11 (struct Qdisc*) ; 
 int /*<<< orphan*/  FUNC12 (struct Qdisc*) ; 
 unsigned long FUNC13 (struct Qdisc*,int /*<<< orphan*/ ) ; 
 int FUNC14 (struct Qdisc*,unsigned long,struct Qdisc*,struct Qdisc**,struct netlink_ext_ack*) ; 

__attribute__((used)) static int FUNC15(struct net_device *dev, struct Qdisc *parent,
		       struct sk_buff *skb, struct nlmsghdr *n, u32 classid,
		       struct Qdisc *new, struct Qdisc *old,
		       struct netlink_ext_ack *extack)
{
	struct Qdisc *q = old;
	struct net *net = FUNC5(dev);

	if (parent == NULL) {
		unsigned int i, num_q, ingress;

		ingress = 0;
		num_q = dev->num_tx_queues;
		if ((q && q->flags & TCQ_F_INGRESS) ||
		    (new && new->flags & TCQ_F_INGRESS)) {
			num_q = 1;
			ingress = 1;
			if (!FUNC4(dev)) {
				FUNC0(extack, "Device does not have an ingress queue");
				return -ENOENT;
			}
		}

		if (dev->flags & IFF_UP)
			FUNC2(dev);

		FUNC9(dev, new, old, extack);

		if (new && new->ops->attach)
			goto skip;

		for (i = 0; i < num_q; i++) {
			struct netdev_queue *dev_queue = FUNC4(dev);

			if (!ingress)
				dev_queue = FUNC6(dev, i);

			old = FUNC3(dev_queue, new);
			if (new && i > 0)
				FUNC11(new);

			if (!ingress)
				FUNC10(old);
		}

skip:
		if (!ingress) {
			FUNC7(net, skb, n, classid,
					   dev->qdisc, new);
			if (new && !new->ops->attach)
				FUNC11(new);
			dev->qdisc = new ? : &noop_qdisc;

			if (new && new->ops->attach)
				new->ops->attach(new);
		} else {
			FUNC7(net, skb, n, classid, old, new);
		}

		if (dev->flags & IFF_UP)
			FUNC1(dev);
	} else {
		const struct Qdisc_class_ops *cops = parent->ops->cl_ops;
		unsigned long cl;
		int err;

		/* Only support running class lockless if parent is lockless */
		if (new && (new->flags & TCQ_F_NOLOCK) &&
		    parent && !(parent->flags & TCQ_F_NOLOCK))
			FUNC8(new);

		if (!cops || !cops->graft)
			return -EOPNOTSUPP;

		cl = cops->find(parent, classid);
		if (!cl) {
			FUNC0(extack, "Specified class not found");
			return -ENOENT;
		}

		err = cops->graft(parent, cl, new, &old, extack);
		if (err)
			return err;
		FUNC7(net, skb, n, classid, old, new);
	}
	return 0;
}