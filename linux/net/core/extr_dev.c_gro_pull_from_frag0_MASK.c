#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct skb_shared_info {int nr_frags; int /*<<< orphan*/ * frags; } ;
struct sk_buff {int end; int tail; int data_len; } ;
struct TYPE_2__ {int /*<<< orphan*/  frag0; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_1__* FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 struct skb_shared_info* FUNC8 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*) ; 
 scalar_t__ FUNC10 (int) ; 

__attribute__((used)) static void FUNC11(struct sk_buff *skb, int grow)
{
	struct skb_shared_info *pinfo = FUNC8(skb);

	FUNC0(skb->end - skb->tail < grow);

	FUNC2(FUNC9(skb), FUNC1(skb)->frag0, grow);

	skb->data_len -= grow;
	skb->tail += grow;

	FUNC4(&pinfo->frags[0], grow);
	FUNC6(&pinfo->frags[0], grow);

	if (FUNC10(!FUNC5(&pinfo->frags[0]))) {
		FUNC7(skb, 0);
		FUNC3(pinfo->frags, pinfo->frags + 1,
			--pinfo->nr_frags * sizeof(pinfo->frags[0]));
	}
}