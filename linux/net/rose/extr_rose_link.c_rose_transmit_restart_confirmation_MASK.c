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
struct rose_neigh {int dummy; } ;

/* Variables and functions */
 int AX25_BPQ_HEADER_LEN ; 
 int AX25_MAX_HEADER_LEN ; 
 int /*<<< orphan*/  AX25_P_ROSE ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  ROSE_GFI ; 
 int ROSE_MIN_LEN ; 
 int /*<<< orphan*/  ROSE_RESTART_CONFIRMATION ; 
 struct sk_buff* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,struct rose_neigh*) ; 
 unsigned char* FUNC3 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,int) ; 

__attribute__((used)) static void FUNC5(struct rose_neigh *neigh)
{
	struct sk_buff *skb;
	unsigned char *dptr;
	int len;

	len = AX25_BPQ_HEADER_LEN + AX25_MAX_HEADER_LEN + ROSE_MIN_LEN + 1;

	if ((skb = FUNC0(len, GFP_ATOMIC)) == NULL)
		return;

	FUNC4(skb, AX25_BPQ_HEADER_LEN + AX25_MAX_HEADER_LEN);

	dptr = FUNC3(skb, ROSE_MIN_LEN + 1);

	*dptr++ = AX25_P_ROSE;
	*dptr++ = ROSE_GFI;
	*dptr++ = 0x00;
	*dptr++ = ROSE_RESTART_CONFIRMATION;

	if (!FUNC2(skb, neigh))
		FUNC1(skb);
}