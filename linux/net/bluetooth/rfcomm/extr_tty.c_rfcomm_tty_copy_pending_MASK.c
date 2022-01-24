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
struct sk_buff {int /*<<< orphan*/  len; int /*<<< orphan*/  data; } ;
struct rfcomm_dev {int /*<<< orphan*/  port; int /*<<< orphan*/  dlc; int /*<<< orphan*/  pending; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct rfcomm_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct rfcomm_dev *dev)
{
	struct sk_buff *skb;
	int inserted = 0;

	FUNC0("dev %p", dev);

	FUNC2(dev->dlc);

	while ((skb = FUNC4(&dev->pending))) {
		inserted += FUNC6(&dev->port, skb->data,
				skb->len);
		FUNC1(skb);
	}

	FUNC3(dev->dlc);

	if (inserted > 0)
		FUNC5(&dev->port);
}