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
struct x25_address {scalar_t__* x25_addr; } ;
struct sk_buff {unsigned char* data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,int) ; 
 int FUNC1 (unsigned char*,struct x25_address*,struct x25_address*) ; 

int FUNC2(struct sk_buff *skb,
		struct x25_address *called_addr,
		struct x25_address *calling_addr)
{
	unsigned char len;
	int needed;
	int rc;

	if (!FUNC0(skb, 1)) {
		/* packet has no address block */
		rc = 0;
		goto empty;
	}

	len = *skb->data;
	needed = 1 + ((len >> 4) + (len & 0x0f) + 1) / 2;

	if (!FUNC0(skb, needed)) {
		/* packet is too short to hold the addresses it claims
		   to hold */
		rc = -1;
		goto empty;
	}

	return FUNC1(skb->data, called_addr, calling_addr);

empty:
	*called_addr->x25_addr = 0;
	*calling_addr->x25_addr = 0;

	return rc;
}