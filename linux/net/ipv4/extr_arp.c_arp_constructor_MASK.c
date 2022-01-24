#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct net_device {int flags; TYPE_1__* header_ops; int /*<<< orphan*/  addr_len; int /*<<< orphan*/ * broadcast; int /*<<< orphan*/ * dev_addr; } ;
struct neighbour {int nud_state; TYPE_3__* ops; int /*<<< orphan*/  output; scalar_t__ ha; int /*<<< orphan*/  type; int /*<<< orphan*/  parms; scalar_t__ primary_key; struct net_device* dev; } ;
struct neigh_parms {int dummy; } ;
struct in_device {struct neigh_parms* arp_parms; } ;
typedef  int /*<<< orphan*/  __be32 ;
struct TYPE_8__ {int /*<<< orphan*/  output; int /*<<< orphan*/  connected_output; } ;
struct TYPE_7__ {int /*<<< orphan*/  key_len; } ;
struct TYPE_6__ {scalar_t__ cache; } ;

/* Variables and functions */
 int EINVAL ; 
 int IFF_LOOPBACK ; 
 int IFF_NOARP ; 
 int IFF_POINTOPOINT ; 
 int /*<<< orphan*/  INADDR_ANY ; 
 void* NUD_NOARP ; 
 int NUD_VALID ; 
 int /*<<< orphan*/  RTN_BROADCAST ; 
 int /*<<< orphan*/  RTN_MULTICAST ; 
 struct in_device* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_3__ arp_direct_ops ; 
 TYPE_3__ arp_generic_ops ; 
 TYPE_3__ arp_hh_ops ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__,struct net_device*,int) ; 
 TYPE_2__ arp_tbl ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  neigh_direct_output ; 
 int /*<<< orphan*/  FUNC6 (struct neigh_parms*) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 

__attribute__((used)) static int FUNC9(struct neighbour *neigh)
{
	__be32 addr;
	struct net_device *dev = neigh->dev;
	struct in_device *in_dev;
	struct neigh_parms *parms;
	u32 inaddr_any = INADDR_ANY;

	if (dev->flags & (IFF_LOOPBACK | IFF_POINTOPOINT))
		FUNC5(neigh->primary_key, &inaddr_any, arp_tbl.key_len);

	addr = *(__be32 *)neigh->primary_key;
	FUNC7();
	in_dev = FUNC0(dev);
	if (!in_dev) {
		FUNC8();
		return -EINVAL;
	}

	neigh->type = FUNC4(FUNC3(dev), dev, addr);

	parms = in_dev->arp_parms;
	FUNC1(neigh->parms);
	neigh->parms = FUNC6(parms);
	FUNC8();

	if (!dev->header_ops) {
		neigh->nud_state = NUD_NOARP;
		neigh->ops = &arp_direct_ops;
		neigh->output = neigh_direct_output;
	} else {
		/* Good devices (checked by reading texts, but only Ethernet is
		   tested)

		   ARPHRD_ETHER: (ethernet, apfddi)
		   ARPHRD_FDDI: (fddi)
		   ARPHRD_IEEE802: (tr)
		   ARPHRD_METRICOM: (strip)
		   ARPHRD_ARCNET:
		   etc. etc. etc.

		   ARPHRD_IPDDP will also work, if author repairs it.
		   I did not it, because this driver does not work even
		   in old paradigm.
		 */

		if (neigh->type == RTN_MULTICAST) {
			neigh->nud_state = NUD_NOARP;
			FUNC2(addr, neigh->ha, dev, 1);
		} else if (dev->flags & (IFF_NOARP | IFF_LOOPBACK)) {
			neigh->nud_state = NUD_NOARP;
			FUNC5(neigh->ha, dev->dev_addr, dev->addr_len);
		} else if (neigh->type == RTN_BROADCAST ||
			   (dev->flags & IFF_POINTOPOINT)) {
			neigh->nud_state = NUD_NOARP;
			FUNC5(neigh->ha, dev->broadcast, dev->addr_len);
		}

		if (dev->header_ops->cache)
			neigh->ops = &arp_hh_ops;
		else
			neigh->ops = &arp_generic_ops;

		if (neigh->nud_state & NUD_VALID)
			neigh->output = neigh->ops->connected_output;
		else
			neigh->output = neigh->ops->output;
	}
	return 0;
}