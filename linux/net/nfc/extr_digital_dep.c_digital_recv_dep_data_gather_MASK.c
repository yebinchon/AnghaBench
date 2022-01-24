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
struct sk_buff {scalar_t__ len; int /*<<< orphan*/  data; } ;
struct nfc_digital_dev {int local_payload_max; struct sk_buff* chaining_skb; } ;
struct digital_data_exch {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 struct sk_buff* FUNC1 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 struct sk_buff* FUNC3 (int,int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC4 (struct sk_buff*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC7 (struct sk_buff*) ; 

__attribute__((used)) static struct sk_buff *
FUNC8(struct nfc_digital_dev *ddev, u8 pfb,
			     struct sk_buff *resp,
			     int (*send_ack)(struct nfc_digital_dev *ddev,
					     struct digital_data_exch
							     *data_exch),
			     struct digital_data_exch *data_exch)
{
	struct sk_buff *new_skb;
	int rc;

	if (FUNC0(pfb) && (!ddev->chaining_skb)) {
		ddev->chaining_skb =
			FUNC3(8 * ddev->local_payload_max,
					   GFP_KERNEL);
		if (!ddev->chaining_skb) {
			rc = -ENOMEM;
			goto error;
		}
	}

	if (ddev->chaining_skb) {
		if (resp->len > FUNC7(ddev->chaining_skb)) {
			new_skb = FUNC4(ddev->chaining_skb,
						  FUNC5(
							  ddev->chaining_skb),
						  8 * ddev->local_payload_max,
						  GFP_KERNEL);
			if (!new_skb) {
				rc = -ENOMEM;
				goto error;
			}

			FUNC2(ddev->chaining_skb);
			ddev->chaining_skb = new_skb;
		}

		FUNC6(ddev->chaining_skb, resp->data, resp->len);

		FUNC2(resp);
		resp = NULL;

		if (FUNC0(pfb)) {
			rc = send_ack(ddev, data_exch);
			if (rc)
				goto error;

			return NULL;
		}

		resp = ddev->chaining_skb;
		ddev->chaining_skb = NULL;
	}

	return resp;

error:
	FUNC2(resp);

	FUNC2(ddev->chaining_skb);
	ddev->chaining_skb = NULL;

	return FUNC1(rc);
}