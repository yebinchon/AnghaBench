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
struct nfc_target {scalar_t__ idx; } ;
struct nfc_dev {int polling; int n_targets; int /*<<< orphan*/  dev; int /*<<< orphan*/ * targets; int /*<<< orphan*/  targets_generation; int /*<<< orphan*/  target_next_idx; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (struct nfc_target*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct nfc_dev*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,int) ; 

int FUNC7(struct nfc_dev *dev,
		      struct nfc_target *targets, int n_targets)
{
	int i;

	FUNC6("dev_name=%s n_targets=%d\n", FUNC0(&dev->dev), n_targets);

	for (i = 0; i < n_targets; i++)
		targets[i].idx = dev->target_next_idx++;

	FUNC1(&dev->dev);

	if (dev->polling == false) {
		FUNC2(&dev->dev);
		return 0;
	}

	dev->polling = false;

	dev->targets_generation++;

	FUNC3(dev->targets);
	dev->targets = NULL;

	if (targets) {
		dev->targets = FUNC4(targets,
				       n_targets * sizeof(struct nfc_target),
				       GFP_ATOMIC);

		if (!dev->targets) {
			dev->n_targets = 0;
			FUNC2(&dev->dev);
			return -ENOMEM;
		}
	}

	dev->n_targets = n_targets;
	FUNC2(&dev->dev);

	FUNC5(dev);

	return 0;
}