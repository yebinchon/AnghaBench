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
struct rose_neigh {scalar_t__ dce_mode; int /*<<< orphan*/  queue; scalar_t__ restarted; scalar_t__ loopback; } ;

/* Variables and functions */
 int /*<<< orphan*/  AX25_P_ROSE ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (struct rose_neigh*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,struct rose_neigh*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,struct rose_neigh*) ; 
 int /*<<< orphan*/  FUNC4 (struct rose_neigh*) ; 
 int /*<<< orphan*/  FUNC5 (struct rose_neigh*) ; 
 int /*<<< orphan*/  FUNC6 (struct rose_neigh*) ; 
 unsigned char* FUNC7 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,struct sk_buff*) ; 

void FUNC9(struct sk_buff *skb, struct rose_neigh *neigh)
{
	unsigned char *dptr;

	if (neigh->loopback) {
		FUNC2(skb, neigh);
		return;
	}

	if (!FUNC1(neigh))
		neigh->restarted = 0;

	dptr = FUNC7(skb, 1);
	*dptr++ = AX25_P_ROSE;

	if (neigh->restarted) {
		if (!FUNC3(skb, neigh))
			FUNC0(skb);
	} else {
		FUNC8(&neigh->queue, skb);

		if (!FUNC5(neigh)) {
			FUNC6(neigh);
			neigh->dce_mode = 0;
			FUNC4(neigh);
		}
	}
}