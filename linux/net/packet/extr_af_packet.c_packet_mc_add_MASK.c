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
struct packet_sock {struct packet_mclist* mclist; } ;
struct packet_mreq_max {scalar_t__ mr_ifindex; scalar_t__ mr_alen; scalar_t__ mr_type; int /*<<< orphan*/  mr_address; } ;
struct packet_mclist {scalar_t__ ifindex; scalar_t__ type; scalar_t__ alen; scalar_t__ addr; int count; struct packet_mclist* next; } ;
struct net_device {scalar_t__ addr_len; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOBUFS ; 
 int ENODEV ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct net_device* FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct packet_mclist*) ; 
 struct packet_mclist* FUNC2 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (scalar_t__,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC6 (struct net_device*,struct packet_mclist*,int) ; 
 struct packet_sock* FUNC7 (struct sock*) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (struct sock*) ; 

__attribute__((used)) static int FUNC11(struct sock *sk, struct packet_mreq_max *mreq)
{
	struct packet_sock *po = FUNC7(sk);
	struct packet_mclist *ml, *i;
	struct net_device *dev;
	int err;

	FUNC8();

	err = -ENODEV;
	dev = FUNC0(FUNC10(sk), mreq->mr_ifindex);
	if (!dev)
		goto done;

	err = -EINVAL;
	if (mreq->mr_alen > dev->addr_len)
		goto done;

	err = -ENOBUFS;
	i = FUNC2(sizeof(*i), GFP_KERNEL);
	if (i == NULL)
		goto done;

	err = 0;
	for (ml = po->mclist; ml; ml = ml->next) {
		if (ml->ifindex == mreq->mr_ifindex &&
		    ml->type == mreq->mr_type &&
		    ml->alen == mreq->mr_alen &&
		    FUNC3(ml->addr, mreq->mr_address, ml->alen) == 0) {
			ml->count++;
			/* Free the new element ... */
			FUNC1(i);
			goto done;
		}
	}

	i->type = mreq->mr_type;
	i->ifindex = mreq->mr_ifindex;
	i->alen = mreq->mr_alen;
	FUNC4(i->addr, mreq->mr_address, i->alen);
	FUNC5(i->addr + i->alen, 0, sizeof(i->addr) - i->alen);
	i->count = 1;
	i->next = po->mclist;
	po->mclist = i;
	err = FUNC6(dev, i, 1);
	if (err) {
		po->mclist = i->next;
		FUNC1(i);
	}

done:
	FUNC9();
	return err;
}