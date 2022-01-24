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
struct net_device {char* name; } ;
struct lowpan_dev {int /*<<< orphan*/  ctx; void* iface_debugfs; } ;
struct dentry {int dummy; } ;

/* Variables and functions */
 int LOWPAN_IPHC_CTX_TABLE_SIZE ; 
 void* FUNC0 (char*,void*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,struct dentry*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  lowpan_context_fops ; 
 void* lowpan_debugfs ; 
 struct lowpan_dev* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,struct lowpan_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*,struct dentry*,int) ; 

void FUNC5(struct net_device *dev)
{
	struct lowpan_dev *ldev = FUNC2(dev);
	struct dentry *contexts;
	int i;

	/* creating the root */
	ldev->iface_debugfs = FUNC0(dev->name, lowpan_debugfs);

	contexts = FUNC0("contexts", ldev->iface_debugfs);

	FUNC1("show", 0644, contexts, &FUNC2(dev)->ctx,
			    &lowpan_context_fops);

	for (i = 0; i < LOWPAN_IPHC_CTX_TABLE_SIZE; i++)
		FUNC4(dev, contexts, i);

	FUNC3(dev, ldev);
}