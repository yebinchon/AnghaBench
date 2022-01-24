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
typedef  scalar_t__ u8 ;
struct sk_buff {int len; scalar_t__* data; } ;
struct nfc_digital_dev {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ DIGITAL_ISO_DEP_I_BLOCK ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int EIO ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,int) ; 

int FUNC4(struct nfc_digital_dev *ddev,
				struct sk_buff *skb)
{
	u8 pcb;
	u8 block_type;

	if (skb->len < 1)
		return -EIO;

	pcb = *skb->data;
	block_type = FUNC1(pcb);

	/* No support fo R-block nor S-block */
	if (block_type != DIGITAL_ISO_DEP_I_BLOCK) {
		FUNC2("ISO_DEP R-block and S-block not supported\n");
		return -EIO;
	}

	if (FUNC0(pcb)) {
		FUNC2("DID field in ISO_DEP PCB not supported\n");
		return -EIO;
	}

	FUNC3(skb, 1);

	return 0;
}