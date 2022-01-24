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
struct sk_buff {int /*<<< orphan*/ * data; } ;

/* Variables and functions */
 int /*<<< orphan*/  AX25_ADDR_LEN ; 
 unsigned char AX25_CBIT ; 
 unsigned char AX25_EBIT ; 
 unsigned char AX25_SSSID_SPARE ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int NR_NETWORK_LEN ; 
 int NR_TRANSPORT_LEN ; 
 struct sk_buff* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,unsigned char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,int,unsigned char*,int /*<<< orphan*/ ) ; 
 unsigned char* FUNC5 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sysctl_netrom_network_ttl_initialiser ; 

void FUNC7(struct sk_buff *skb, int mine, unsigned char cmdflags)
{
	struct sk_buff *skbn;
	unsigned char *dptr;
	int len;

	len = NR_NETWORK_LEN + NR_TRANSPORT_LEN + 1;

	if ((skbn = FUNC0(len, GFP_ATOMIC)) == NULL)
		return;

	FUNC6(skbn, 0);

	dptr = FUNC5(skbn, NR_NETWORK_LEN + NR_TRANSPORT_LEN);

	FUNC4(skb, 7, dptr, AX25_ADDR_LEN);
	dptr[6] &= ~AX25_CBIT;
	dptr[6] &= ~AX25_EBIT;
	dptr[6] |= AX25_SSSID_SPARE;
	dptr += AX25_ADDR_LEN;

	FUNC3(skb, dptr, AX25_ADDR_LEN);
	dptr[6] &= ~AX25_CBIT;
	dptr[6] |= AX25_EBIT;
	dptr[6] |= AX25_SSSID_SPARE;
	dptr += AX25_ADDR_LEN;

	*dptr++ = sysctl_netrom_network_ttl_initialiser;

	if (mine) {
		*dptr++ = 0;
		*dptr++ = 0;
		*dptr++ = skb->data[15];
		*dptr++ = skb->data[16];
	} else {
		*dptr++ = skb->data[15];
		*dptr++ = skb->data[16];
		*dptr++ = 0;
		*dptr++ = 0;
	}

	*dptr++ = cmdflags;
	*dptr++ = 0;

	if (!FUNC2(skbn, NULL))
		FUNC1(skbn);
}