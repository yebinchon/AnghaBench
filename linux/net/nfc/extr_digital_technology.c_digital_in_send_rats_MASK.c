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
struct sk_buff {int dummy; } ;
struct nfc_target {int dummy; } ;
struct nfc_digital_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DIGITAL_RATS_BYTE1 ; 
 int /*<<< orphan*/  DIGITAL_RATS_PARAM ; 
 int ENOMEM ; 
 int /*<<< orphan*/  digital_in_recv_ats ; 
 int FUNC0 (struct nfc_digital_dev*,struct sk_buff*,int,int /*<<< orphan*/ ,struct nfc_target*) ; 
 struct sk_buff* FUNC1 (struct nfc_digital_dev*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct nfc_digital_dev *ddev,
				struct nfc_target *target)
{
	int rc;
	struct sk_buff *skb;

	skb = FUNC1(ddev, 2);
	if (!skb)
		return -ENOMEM;

	FUNC3(skb, DIGITAL_RATS_BYTE1);
	FUNC3(skb, DIGITAL_RATS_PARAM);

	rc = FUNC0(ddev, skb, 30, digital_in_recv_ats,
				 target);
	if (rc)
		FUNC2(skb);

	return rc;
}