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
struct sk_buff {int len; } ;
struct rfcomm_hdr {int /*<<< orphan*/  ctrl; int /*<<< orphan*/  addr; scalar_t__ len; } ;
typedef  int /*<<< orphan*/  __le16 ;

/* Variables and functions */
 int /*<<< orphan*/  RFCOMM_UIH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct rfcomm_hdr* FUNC6 (struct sk_buff*,int) ; 
 int /*<<< orphan*/ * FUNC7 (struct sk_buff*,int) ; 

__attribute__((used)) static void FUNC8(struct sk_buff *skb, u8 addr)
{
	struct rfcomm_hdr *hdr;
	int len = skb->len;
	u8 *crc;

	if (len > 127) {
		hdr = FUNC6(skb, 4);
		FUNC5(FUNC4(FUNC2(len)), (__le16 *) &hdr->len);
	} else {
		hdr = FUNC6(skb, 3);
		hdr->len = FUNC3(len);
	}
	hdr->addr = addr;
	hdr->ctrl = FUNC0(RFCOMM_UIH, 0);

	crc = FUNC7(skb, 1);
	*crc = FUNC1((void *) hdr);
}