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
struct sk_buff {int len; } ;
struct nfc_dev {int n_targets; int /*<<< orphan*/  dev; int /*<<< orphan*/ * targets; int /*<<< orphan*/  targets_generation; } ;
struct netlink_callback {int* args; int /*<<< orphan*/  seq; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct nfc_dev*) ; 
 int /*<<< orphan*/  NLM_F_MULTI ; 
 int FUNC1 (struct nfc_dev*) ; 
 struct nfc_dev* FUNC2 (struct netlink_callback*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (struct sk_buff*,int /*<<< orphan*/ *,struct netlink_callback*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct sk_buff *skb,
				 struct netlink_callback *cb)
{
	int i = cb->args[0];
	struct nfc_dev *dev = (struct nfc_dev *) cb->args[1];
	int rc;

	if (!dev) {
		dev = FUNC2(cb);
		if (FUNC0(dev))
			return FUNC1(dev);

		cb->args[1] = (long) dev;
	}

	FUNC3(&dev->dev);

	cb->seq = dev->targets_generation;

	while (i < dev->n_targets) {
		rc = FUNC5(skb, &dev->targets[i], cb,
					  NLM_F_MULTI);
		if (rc < 0)
			break;

		i++;
	}

	FUNC4(&dev->dev);

	cb->args[0] = i;

	return skb->len;
}