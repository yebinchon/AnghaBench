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
struct sk_buff {int len; scalar_t__* data; } ;
struct nfc_digital_dev {int dummy; } ;

/* Variables and functions */
 scalar_t__ DIGITAL_CMD_SENSF_REQ ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (struct nfc_digital_dev*,void*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct nfc_digital_dev*,void*,struct sk_buff*) ; 

__attribute__((used)) static void FUNC3(struct nfc_digital_dev *ddev,
		void *arg, struct sk_buff *resp)
{
	if (!FUNC0(resp) && (resp->len >= 2) &&
			(resp->data[1] == DIGITAL_CMD_SENSF_REQ))
		FUNC2(ddev, arg, resp);
	else
		FUNC1(ddev, arg, resp);

	return;
}