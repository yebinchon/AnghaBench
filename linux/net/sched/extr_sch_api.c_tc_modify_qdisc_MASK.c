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
typedef  scalar_t__ u32 ;
struct tcmsg {scalar_t__ tcm_parent; scalar_t__ tcm_handle; int /*<<< orphan*/  tcm_ifindex; } ;
struct sk_buff {int /*<<< orphan*/  sk; } ;
struct nlmsghdr {int nlmsg_flags; } ;
struct nlattr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct netdev_queue {struct Qdisc* qdisc_sleeping; } ;
struct net_device {struct Qdisc* qdisc; } ;
struct net {int /*<<< orphan*/  user_ns; } ;
struct Qdisc {scalar_t__ handle; struct netdev_queue* dev_queue; TYPE_2__* ops; } ;
struct TYPE_4__ {TYPE_1__* cl_ops; int /*<<< orphan*/  id; } ;
struct TYPE_3__ {struct netdev_queue* (* select_queue ) (struct Qdisc*,struct tcmsg*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_NET_ADMIN ; 
 int EAGAIN ; 
 int EEXIST ; 
 int EINVAL ; 
 int ELOOP ; 
 int ENODEV ; 
 int ENOENT ; 
 int EPERM ; 
 int NLM_F_CREATE ; 
 int NLM_F_EXCL ; 
 int NLM_F_REPLACE ; 
 int /*<<< orphan*/  FUNC0 (struct netlink_ext_ack*,char*) ; 
 size_t TCA_KIND ; 
 int /*<<< orphan*/  TCA_MAX ; 
 scalar_t__ TC_H_INGRESS ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ TC_H_ROOT ; 
 struct net_device* FUNC3 (struct net*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct Qdisc*,struct Qdisc*,int /*<<< orphan*/ ) ; 
 struct netdev_queue* FUNC5 (struct net_device*) ; 
 scalar_t__ FUNC6 (struct net_device*) ; 
 struct netdev_queue* FUNC7 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (struct nlattr*,int /*<<< orphan*/ ) ; 
 struct tcmsg* FUNC10 (struct nlmsghdr*) ; 
 int FUNC11 (struct nlmsghdr*,int,struct nlattr**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct netlink_ext_ack*) ; 
 int FUNC12 (struct Qdisc*,struct nlattr**,struct netlink_ext_ack*) ; 
 struct Qdisc* FUNC13 (struct net_device*,struct netdev_queue*,struct Qdisc*,scalar_t__,scalar_t__,struct nlattr**,int*,struct netlink_ext_ack*) ; 
 int FUNC14 (struct net_device*,struct Qdisc*,struct sk_buff*,struct nlmsghdr*,scalar_t__,struct Qdisc*,int /*<<< orphan*/ *,struct netlink_ext_ack*) ; 
 struct Qdisc* FUNC15 (struct Qdisc*,scalar_t__) ; 
 struct Qdisc* FUNC16 (struct net_device*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC17 (struct net*,struct sk_buff*,struct nlmsghdr*,scalar_t__,int /*<<< orphan*/ *,struct Qdisc*) ; 
 int /*<<< orphan*/  FUNC18 (struct Qdisc*) ; 
 int /*<<< orphan*/  FUNC19 (struct Qdisc*) ; 
 int /*<<< orphan*/  rtm_tca_policy ; 
 struct net* FUNC20 (int /*<<< orphan*/ ) ; 
 struct netdev_queue* FUNC21 (struct Qdisc*,struct tcmsg*) ; 

__attribute__((used)) static int FUNC22(struct sk_buff *skb, struct nlmsghdr *n,
			   struct netlink_ext_ack *extack)
{
	struct net *net = FUNC20(skb->sk);
	struct tcmsg *tcm;
	struct nlattr *tca[TCA_MAX + 1];
	struct net_device *dev;
	u32 clid;
	struct Qdisc *q, *p;
	int err;

	if (!FUNC8(skb, net->user_ns, CAP_NET_ADMIN))
		return -EPERM;

replay:
	/* Reinit, just in case something touches this. */
	err = FUNC11(n, sizeof(*tcm), tca, TCA_MAX,
				     rtm_tca_policy, extack);
	if (err < 0)
		return err;

	tcm = FUNC10(n);
	clid = tcm->tcm_parent;
	q = p = NULL;

	dev = FUNC3(net, tcm->tcm_ifindex);
	if (!dev)
		return -ENODEV;


	if (clid) {
		if (clid != TC_H_ROOT) {
			if (clid != TC_H_INGRESS) {
				p = FUNC16(dev, FUNC1(clid));
				if (!p) {
					FUNC0(extack, "Failed to find specified qdisc");
					return -ENOENT;
				}
				q = FUNC15(p, clid);
			} else if (FUNC6(dev)) {
				q = FUNC5(dev)->qdisc_sleeping;
			}
		} else {
			q = dev->qdisc;
		}

		/* It may be default qdisc, ignore it */
		if (q && q->handle == 0)
			q = NULL;

		if (!q || !tcm->tcm_handle || q->handle != tcm->tcm_handle) {
			if (tcm->tcm_handle) {
				if (q && !(n->nlmsg_flags & NLM_F_REPLACE)) {
					FUNC0(extack, "NLM_F_REPLACE needed to override");
					return -EEXIST;
				}
				if (FUNC2(tcm->tcm_handle)) {
					FUNC0(extack, "Invalid minor handle");
					return -EINVAL;
				}
				q = FUNC16(dev, tcm->tcm_handle);
				if (!q)
					goto create_n_graft;
				if (n->nlmsg_flags & NLM_F_EXCL) {
					FUNC0(extack, "Exclusivity flag on, cannot override");
					return -EEXIST;
				}
				if (tca[TCA_KIND] &&
				    FUNC9(tca[TCA_KIND], q->ops->id)) {
					FUNC0(extack, "Invalid qdisc name");
					return -EINVAL;
				}
				if (q == p ||
				    (p && FUNC4(q, p, 0))) {
					FUNC0(extack, "Qdisc parent/child loop detected");
					return -ELOOP;
				}
				FUNC19(q);
				goto graft;
			} else {
				if (!q)
					goto create_n_graft;

				/* This magic test requires explanation.
				 *
				 *   We know, that some child q is already
				 *   attached to this parent and have choice:
				 *   either to change it or to create/graft new one.
				 *
				 *   1. We are allowed to create/graft only
				 *   if CREATE and REPLACE flags are set.
				 *
				 *   2. If EXCL is set, requestor wanted to say,
				 *   that qdisc tcm_handle is not expected
				 *   to exist, so that we choose create/graft too.
				 *
				 *   3. The last case is when no flags are set.
				 *   Alas, it is sort of hole in API, we
				 *   cannot decide what to do unambiguously.
				 *   For now we select create/graft, if
				 *   user gave KIND, which does not match existing.
				 */
				if ((n->nlmsg_flags & NLM_F_CREATE) &&
				    (n->nlmsg_flags & NLM_F_REPLACE) &&
				    ((n->nlmsg_flags & NLM_F_EXCL) ||
				     (tca[TCA_KIND] &&
				      FUNC9(tca[TCA_KIND], q->ops->id))))
					goto create_n_graft;
			}
		}
	} else {
		if (!tcm->tcm_handle) {
			FUNC0(extack, "Handle cannot be zero");
			return -EINVAL;
		}
		q = FUNC16(dev, tcm->tcm_handle);
	}

	/* Change qdisc parameters */
	if (!q) {
		FUNC0(extack, "Specified qdisc not found");
		return -ENOENT;
	}
	if (n->nlmsg_flags & NLM_F_EXCL) {
		FUNC0(extack, "Exclusivity flag on, cannot modify");
		return -EEXIST;
	}
	if (tca[TCA_KIND] && FUNC9(tca[TCA_KIND], q->ops->id)) {
		FUNC0(extack, "Invalid qdisc name");
		return -EINVAL;
	}
	err = FUNC12(q, tca, extack);
	if (err == 0)
		FUNC17(net, skb, n, clid, NULL, q);
	return err;

create_n_graft:
	if (!(n->nlmsg_flags & NLM_F_CREATE)) {
		FUNC0(extack, "Qdisc not found. To create specify NLM_F_CREATE flag");
		return -ENOENT;
	}
	if (clid == TC_H_INGRESS) {
		if (FUNC5(dev)) {
			q = FUNC13(dev, FUNC5(dev), p,
					 tcm->tcm_parent, tcm->tcm_parent,
					 tca, &err, extack);
		} else {
			FUNC0(extack, "Cannot find ingress queue for specified device");
			err = -ENOENT;
		}
	} else {
		struct netdev_queue *dev_queue;

		if (p && p->ops->cl_ops && p->ops->cl_ops->select_queue)
			dev_queue = p->ops->cl_ops->select_queue(p, tcm);
		else if (p)
			dev_queue = p->dev_queue;
		else
			dev_queue = FUNC7(dev, 0);

		q = FUNC13(dev, dev_queue, p,
				 tcm->tcm_parent, tcm->tcm_handle,
				 tca, &err, extack);
	}
	if (q == NULL) {
		if (err == -EAGAIN)
			goto replay;
		return err;
	}

graft:
	err = FUNC14(dev, p, skb, n, clid, q, NULL, extack);
	if (err) {
		if (q)
			FUNC18(q);
		return err;
	}

	return 0;
}