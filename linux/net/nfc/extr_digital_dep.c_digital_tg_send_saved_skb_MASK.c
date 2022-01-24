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
struct nfc_digital_dev {int /*<<< orphan*/  saved_skb; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  digital_tg_recv_dep_req ; 
 int FUNC0 (struct nfc_digital_dev*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct nfc_digital_dev *ddev)
{
	int rc;

	if (!ddev->saved_skb)
		return -EINVAL;

	FUNC2(ddev->saved_skb);

	rc = FUNC0(ddev, ddev->saved_skb, 1500,
				 digital_tg_recv_dep_req, NULL);
	if (rc)
		FUNC1(ddev->saved_skb);

	return rc;
}