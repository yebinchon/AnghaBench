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
struct phonet_device_list {int /*<<< orphan*/  list; int /*<<< orphan*/  lock; } ;
struct phonet_device {int /*<<< orphan*/  list; int /*<<< orphan*/  addrs; struct net_device* netdev; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 struct phonet_device* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct phonet_device_list* FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct phonet_device *FUNC7(struct net_device *dev)
{
	struct phonet_device_list *pndevs = FUNC6(FUNC2(dev));
	struct phonet_device *pnd = FUNC3(sizeof(*pnd), GFP_ATOMIC);
	if (pnd == NULL)
		return NULL;
	pnd->netdev = dev;
	FUNC1(pnd->addrs, 64);

	FUNC0(!FUNC5(&pndevs->lock));
	FUNC4(&pnd->list, &pndevs->list);
	return pnd;
}