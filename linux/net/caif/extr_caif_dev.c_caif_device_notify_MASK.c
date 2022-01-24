#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct notifier_block {int dummy; } ;
struct net_device {scalar_t__ type; int /*<<< orphan*/  ifindex; } ;
struct cflayer {int dummy; } ;
struct cfcnfg {int dummy; } ;
struct caif_device_entry_list {int /*<<< orphan*/  lock; int /*<<< orphan*/  list; } ;
struct TYPE_7__ {int /*<<< orphan*/  id; TYPE_2__* up; } ;
struct caif_device_entry {int /*<<< orphan*/  pcpu_refcnt; int /*<<< orphan*/  netdev; int /*<<< orphan*/  list; TYPE_3__ layer; int /*<<< orphan*/  flow_lock; TYPE_1__* xoff_skb; int /*<<< orphan*/ * xoff_skb_dtor; int /*<<< orphan*/  xoff; } ;
struct caif_dev_common {int /*<<< orphan*/  flowctrl; int /*<<< orphan*/  use_stx; int /*<<< orphan*/  use_frag; } ;
struct TYPE_6__ {int /*<<< orphan*/  (* ctrlcmd ) (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;
struct TYPE_5__ {int /*<<< orphan*/ * destructor; } ;

/* Variables and functions */
 scalar_t__ ARPHRD_CAIF ; 
 int EINVAL ; 
#define  NETDEV_DOWN 131 
#define  NETDEV_REGISTER 130 
#define  NETDEV_UNREGISTER 129 
#define  NETDEV_UP 128 
 int /*<<< orphan*/  _CAIF_CTRLCMD_PHYIF_DOWN_IND ; 
 struct caif_device_entry_list* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,struct caif_dev_common*,struct cflayer*,int,struct cflayer**,int /*<<< orphan*/ *) ; 
 struct caif_device_entry* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct caif_device_entry*) ; 
 int /*<<< orphan*/  FUNC4 (struct caif_device_entry*) ; 
 int /*<<< orphan*/  FUNC5 (struct caif_device_entry*) ; 
 int /*<<< orphan*/  FUNC6 (struct cfcnfg*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC7 (struct cfcnfg*,TYPE_3__*,int) ; 
 struct cflayer* FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dev_flowctrl ; 
 int /*<<< orphan*/  FUNC9 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 struct cfcnfg* FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct caif_device_entry*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 struct net_device* FUNC18 (void*) ; 
 struct caif_dev_common* FUNC19 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC20 (char*) ; 
 int /*<<< orphan*/  FUNC21 (char*) ; 
 int /*<<< orphan*/  FUNC22 () ; 
 int /*<<< orphan*/  FUNC23 () ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC26 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC27 () ; 

__attribute__((used)) static int FUNC28(struct notifier_block *me, unsigned long what,
			      void *ptr)
{
	struct net_device *dev = FUNC18(ptr);
	struct caif_device_entry *caifd = NULL;
	struct caif_dev_common *caifdev;
	struct cfcnfg *cfg;
	struct cflayer *layer, *link_support;
	int head_room = 0;
	struct caif_device_entry_list *caifdevs;

	cfg = FUNC12(FUNC9(dev));
	caifdevs = FUNC0(FUNC9(dev));

	caifd = FUNC2(dev);
	if (caifd == NULL && dev->type != ARPHRD_CAIF)
		return 0;

	switch (what) {
	case NETDEV_REGISTER:
		if (caifd != NULL)
			break;

		caifdev = FUNC19(dev);

		link_support = NULL;
		if (caifdev->use_frag) {
			head_room = 1;
			link_support = FUNC8(dev->ifindex,
							caifdev->use_stx);
			if (!link_support) {
				FUNC21("Out of memory\n");
				break;
			}
		}
		FUNC1(dev, caifdev, link_support, head_room,
				&layer, NULL);
		caifdev->flowctrl = dev_flowctrl;
		break;

	case NETDEV_UP:
		FUNC22();

		caifd = FUNC2(dev);
		if (caifd == NULL) {
			FUNC23();
			break;
		}

		caifd->xoff = 0;
		FUNC7(cfg, &caifd->layer, true);
		FUNC23();

		break;

	case NETDEV_DOWN:
		FUNC22();

		caifd = FUNC2(dev);
		if (!caifd || !caifd->layer.up || !caifd->layer.up->ctrlcmd) {
			FUNC23();
			return -EINVAL;
		}

		FUNC7(cfg, &caifd->layer, false);
		FUNC3(caifd);
		FUNC23();

		caifd->layer.up->ctrlcmd(caifd->layer.up,
					 _CAIF_CTRLCMD_PHYIF_DOWN_IND,
					 caifd->layer.id);

		FUNC24(&caifd->flow_lock);

		/*
		 * Replace our xoff-destructor with original destructor.
		 * We trust that skb->destructor *always* is called before
		 * the skb reference is invalid. The hijacked SKB destructor
		 * takes the flow_lock so manipulating the skb->destructor here
		 * should be safe.
		*/
		if (caifd->xoff_skb_dtor != NULL && caifd->xoff_skb != NULL)
			caifd->xoff_skb->destructor = caifd->xoff_skb_dtor;

		caifd->xoff = 0;
		caifd->xoff_skb_dtor = NULL;
		caifd->xoff_skb = NULL;

		FUNC25(&caifd->flow_lock);
		FUNC4(caifd);
		break;

	case NETDEV_UNREGISTER:
		FUNC16(&caifdevs->lock);

		caifd = FUNC2(dev);
		if (caifd == NULL) {
			FUNC17(&caifdevs->lock);
			break;
		}
		FUNC15(&caifd->list);

		/*
		 * NETDEV_UNREGISTER is called repeatedly until all reference
		 * counts for the net-device are released. If references to
		 * caifd is taken, simply ignore NETDEV_UNREGISTER and wait for
		 * the next call to NETDEV_UNREGISTER.
		 *
		 * If any packets are in flight down the CAIF Stack,
		 * cfcnfg_del_phy_layer will return nonzero.
		 * If no packets are in flight, the CAIF Stack associated
		 * with the net-device un-registering is freed.
		 */

		if (FUNC5(caifd) != 0 ||
			FUNC6(cfg, &caifd->layer) != 0) {

			FUNC20("Wait for device inuse\n");
			/* Enrole device if CAIF Stack is still in use */
			FUNC14(&caifd->list, &caifdevs->list);
			FUNC17(&caifdevs->lock);
			break;
		}

		FUNC27();
		FUNC10(caifd->netdev);
		FUNC11(caifd->pcpu_refcnt);
		FUNC13(caifd);

		FUNC17(&caifdevs->lock);
		break;
	}
	return 0;
}