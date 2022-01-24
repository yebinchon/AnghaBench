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
struct sk_buff {scalar_t__ fclone; } ;

/* Variables and functions */
 scalar_t__ SKB_FCLONE_UNAVAILABLE ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 scalar_t__ FUNC5 (int) ; 

void FUNC6(struct sk_buff *skb, int budget)
{
	if (FUNC5(!skb))
		return;

	/* Zero budget indicate non-NAPI context called us, like netpoll */
	if (FUNC5(!budget)) {
		FUNC2(skb);
		return;
	}

	if (!FUNC3(skb))
		return;

	/* if reaching here SKB is ready to free */
	FUNC4(skb);

	/* if SKB is a clone, don't handle this case */
	if (skb->fclone != SKB_FCLONE_UNAVAILABLE) {
		FUNC0(skb);
		return;
	}

	FUNC1(skb);
}