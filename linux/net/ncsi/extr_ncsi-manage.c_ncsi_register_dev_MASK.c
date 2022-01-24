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
struct net_device {int dummy; } ;
struct TYPE_3__ {struct net_device* dev; int /*<<< orphan*/  func; int /*<<< orphan*/  type; } ;
struct ncsi_dev {void (* handler ) (struct ncsi_dev*) ;struct net_device* dev; int /*<<< orphan*/  state; } ;
struct ncsi_dev_priv {TYPE_1__ ptype; int /*<<< orphan*/  node; TYPE_2__* requests; int /*<<< orphan*/  request_id; int /*<<< orphan*/  packages; int /*<<< orphan*/  lock; int /*<<< orphan*/  package_whitelist; int /*<<< orphan*/  work; int /*<<< orphan*/  vlan_vids; int /*<<< orphan*/  channel_queue; scalar_t__ pending_req_num; struct ncsi_dev ndev; } ;
struct TYPE_4__ {int id; int /*<<< orphan*/  timer; struct ncsi_dev_priv* ndp; } ;

/* Variables and functions */
 int FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  ETH_P_NCSI ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NCSI_REQ_START_IDX ; 
 int /*<<< orphan*/  UINT_MAX ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 struct ncsi_dev_priv* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ncsi_dev_list ; 
 int /*<<< orphan*/  ncsi_dev_lock ; 
 int /*<<< orphan*/  ncsi_dev_state_registered ; 
 int /*<<< orphan*/  ncsi_dev_work ; 
 struct ncsi_dev* FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct net_device*) ; 
 int /*<<< orphan*/  ncsi_rcv_rsp ; 
 int /*<<< orphan*/  ncsi_request_timeout ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

struct ncsi_dev *FUNC13(struct net_device *dev,
				   void (*handler)(struct ncsi_dev *ndev))
{
	struct ncsi_dev_priv *ndp;
	struct ncsi_dev *nd;
	unsigned long flags;
	int i;

	/* Check if the device has been registered or not */
	nd = FUNC7(dev);
	if (nd)
		return nd;

	/* Create NCSI device */
	ndp = FUNC5(sizeof(*ndp), GFP_ATOMIC);
	if (!ndp)
		return NULL;

	nd = &ndp->ndev;
	nd->state = ncsi_dev_state_registered;
	nd->dev = dev;
	nd->handler = handler;
	ndp->pending_req_num = 0;
	FUNC1(&ndp->channel_queue);
	FUNC1(&ndp->vlan_vids);
	FUNC2(&ndp->work, ncsi_dev_work);
	ndp->package_whitelist = UINT_MAX;

	/* Initialize private NCSI device */
	FUNC9(&ndp->lock);
	FUNC1(&ndp->packages);
	ndp->request_id = NCSI_REQ_START_IDX;
	for (i = 0; i < FUNC0(ndp->requests); i++) {
		ndp->requests[i].id = i;
		ndp->requests[i].ndp = ndp;
		FUNC12(&ndp->requests[i].timer, ncsi_request_timeout, 0);
	}

	FUNC10(&ncsi_dev_lock, flags);
	FUNC6(&ndp->node, &ncsi_dev_list);
	FUNC11(&ncsi_dev_lock, flags);

	/* Register NCSI packet Rx handler */
	ndp->ptype.type = FUNC3(ETH_P_NCSI);
	ndp->ptype.func = ncsi_rcv_rsp;
	ndp->ptype.dev = dev;
	FUNC4(&ndp->ptype);

	/* Set up generic netlink interface */
	FUNC8(dev);

	return nd;
}