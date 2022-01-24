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
struct net_device {int dummy; } ;
struct flow_indr_block_dev {int /*<<< orphan*/  refcnt; int /*<<< orphan*/  ht_node; struct net_device* dev; int /*<<< orphan*/  cb_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct flow_indr_block_dev* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  flow_indr_setup_block_ht_params ; 
 int /*<<< orphan*/  indr_setup_block_ht ; 
 int /*<<< orphan*/  FUNC2 (struct flow_indr_block_dev*) ; 
 struct flow_indr_block_dev* FUNC3 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct flow_indr_block_dev *
FUNC5(struct net_device *dev)
{
	struct flow_indr_block_dev *indr_dev;

	indr_dev = FUNC1(dev);
	if (indr_dev)
		goto inc_ref;

	indr_dev = FUNC3(sizeof(*indr_dev), GFP_KERNEL);
	if (!indr_dev)
		return NULL;

	FUNC0(&indr_dev->cb_list);
	indr_dev->dev = dev;
	if (FUNC4(&indr_setup_block_ht, &indr_dev->ht_node,
				   flow_indr_setup_block_ht_params)) {
		FUNC2(indr_dev);
		return NULL;
	}

inc_ref:
	indr_dev->refcnt++;
	return indr_dev;
}