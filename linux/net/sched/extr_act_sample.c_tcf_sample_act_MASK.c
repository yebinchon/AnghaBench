#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  cpu_bstats; } ;
struct tcf_sample {int rate; int trunc_size; scalar_t__ truncate; int /*<<< orphan*/  psample_group; int /*<<< orphan*/  tcf_action; TYPE_1__ common; int /*<<< orphan*/  tcf_tm; } ;
struct tcf_result {int dummy; } ;
struct tc_action {int dummy; } ;
struct sk_buff {int skb_iif; int len; int /*<<< orphan*/  mac_len; TYPE_2__* dev; } ;
struct psample_group {int dummy; } ;
struct TYPE_4__ {int ifindex; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct sk_buff*) ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct psample_group*,struct sk_buff*,int,int,int,int) ; 
 struct psample_group* FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 struct tcf_sample* FUNC11 (struct tc_action const*) ; 

__attribute__((used)) static int FUNC12(struct sk_buff *skb, const struct tc_action *a,
			  struct tcf_result *res)
{
	struct tcf_sample *s = FUNC11(a);
	struct psample_group *psample_group;
	int retval;
	int size;
	int iif;
	int oif;

	FUNC8(&s->tcf_tm);
	FUNC1(FUNC10(s->common.cpu_bstats), skb);
	retval = FUNC0(s->tcf_action);

	psample_group = FUNC4(s->psample_group);

	/* randomly sample packets according to rate */
	if (psample_group && (FUNC2() % s->rate == 0)) {
		if (!FUNC5(skb)) {
			iif = skb->skb_iif;
			oif = skb->dev->ifindex;
		} else {
			iif = skb->dev->ifindex;
			oif = 0;
		}

		/* on ingress, the mac header gets popped, so push it back */
		if (FUNC5(skb) && FUNC9(skb->dev))
			FUNC7(skb, skb->mac_len);

		size = s->truncate ? s->trunc_size : skb->len;
		FUNC3(psample_group, skb, size, iif, oif,
				      s->rate);

		if (FUNC5(skb) && FUNC9(skb->dev))
			FUNC6(skb, skb->mac_len);
	}

	return retval;
}