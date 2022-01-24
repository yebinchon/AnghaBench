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
typedef  scalar_t__ u32 ;
struct nfc_target {scalar_t__ idx; } ;
struct nfc_dev {int n_targets; int /*<<< orphan*/  dev; struct nfc_target* targets; int /*<<< orphan*/ * active_target; int /*<<< orphan*/  targets_generation; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct nfc_target*) ; 
 int /*<<< orphan*/  FUNC4 (struct nfc_target*,struct nfc_target*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct nfc_dev*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,scalar_t__) ; 

int FUNC7(struct nfc_dev *dev, u32 target_idx)
{
	struct nfc_target *tg;
	int i;

	FUNC6("dev_name %s n_target %d\n", FUNC0(&dev->dev), target_idx);

	FUNC1(&dev->dev);

	for (i = 0; i < dev->n_targets; i++) {
		tg = &dev->targets[i];
		if (tg->idx == target_idx)
			break;
	}

	if (i == dev->n_targets) {
		FUNC2(&dev->dev);
		return -EINVAL;
	}

	dev->targets_generation++;
	dev->n_targets--;
	dev->active_target = NULL;

	if (dev->n_targets) {
		FUNC4(&dev->targets[i], &dev->targets[i + 1],
		       (dev->n_targets - i) * sizeof(struct nfc_target));
	} else {
		FUNC3(dev->targets);
		dev->targets = NULL;
	}

	FUNC2(&dev->dev);

	FUNC5(dev, target_idx);

	return 0;
}