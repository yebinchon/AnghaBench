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
typedef  int /*<<< orphan*/  u8 ;
struct nfc_digital_dev {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct nfc_digital_dev*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct nfc_digital_dev*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  digital_tg_recv_sensf_req ; 

int FUNC2(struct nfc_digital_dev *ddev, u8 rf_tech)
{
	int rc;

	rc = FUNC0(ddev, rf_tech);
	if (rc)
		return rc;

	return FUNC1(ddev, 300, digital_tg_recv_sensf_req, NULL);
}