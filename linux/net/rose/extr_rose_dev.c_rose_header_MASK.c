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
struct net_device {int /*<<< orphan*/  addr_len; } ;

/* Variables and functions */
 int /*<<< orphan*/  AX25_P_IP ; 
 int /*<<< orphan*/  ROSE_DATA ; 
 int ROSE_GFI ; 
 scalar_t__ ROSE_MIN_LEN ; 
 int ROSE_Q_BIT ; 
 int /*<<< orphan*/  FUNC0 (unsigned char*,void const*,int /*<<< orphan*/ ) ; 
 unsigned char* FUNC1 (struct sk_buff*,scalar_t__) ; 

__attribute__((used)) static int FUNC2(struct sk_buff *skb, struct net_device *dev,
		       unsigned short type,
		       const void *daddr, const void *saddr, unsigned int len)
{
	unsigned char *buff = FUNC1(skb, ROSE_MIN_LEN + 2);

	if (daddr)
		FUNC0(buff + 7, daddr, dev->addr_len);

	*buff++ = ROSE_GFI | ROSE_Q_BIT;
	*buff++ = 0x00;
	*buff++ = ROSE_DATA;
	*buff++ = 0x7F;
	*buff++ = AX25_P_IP;

	if (daddr != NULL)
		return 37;

	return -37;
}