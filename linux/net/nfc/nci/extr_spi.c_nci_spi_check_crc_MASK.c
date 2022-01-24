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
typedef  scalar_t__ u16 ;
struct sk_buff {int* data; int len; } ;

/* Variables and functions */
 int /*<<< orphan*/  CRC_INIT ; 
 scalar_t__ NCI_SPI_CRC_LEN ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,scalar_t__) ; 

__attribute__((used)) static int FUNC2(struct sk_buff *skb)
{
	u16 crc_data = (skb->data[skb->len - 2] << 8) |
			skb->data[skb->len - 1];
	int ret;

	ret = (FUNC0(CRC_INIT, skb->data, skb->len - NCI_SPI_CRC_LEN)
			== crc_data);

	FUNC1(skb, skb->len - NCI_SPI_CRC_LEN);

	return ret;
}