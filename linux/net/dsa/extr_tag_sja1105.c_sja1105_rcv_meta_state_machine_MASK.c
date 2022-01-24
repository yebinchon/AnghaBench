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
struct sk_buff {scalar_t__ dev; } ;
struct sja1105_port {TYPE_2__* data; } ;
struct sja1105_meta {int dummy; } ;
struct dsa_port {TYPE_1__* ds; struct sja1105_port* priv; } ;
struct TYPE_4__ {int /*<<< orphan*/  meta_lock; struct sk_buff* stampable_skb; int /*<<< orphan*/  state; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  SJA1105_HWTS_RX_EN ; 
 int /*<<< orphan*/  SJA1105_META_DMAC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 struct dsa_port* FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,struct sja1105_meta*) ; 
 struct sk_buff* FUNC4 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct sk_buff
*FUNC8(struct sk_buff *skb,
				struct sja1105_meta *meta,
				bool is_link_local,
				bool is_meta)
{
	struct sja1105_port *sp;
	struct dsa_port *dp;

	dp = FUNC1(skb->dev);
	sp = dp->priv;

	/* Step 1: A timestampable frame was received.
	 * Buffer it until we get its meta frame.
	 */
	if (is_link_local) {
		if (!FUNC7(SJA1105_HWTS_RX_EN, &sp->data->state))
			/* Do normal processing. */
			return skb;

		FUNC5(&sp->data->meta_lock);
		/* Was this a link-local frame instead of the meta
		 * that we were expecting?
		 */
		if (sp->data->stampable_skb) {
			FUNC0(dp->ds->dev,
					    "Expected meta frame, is %12llx "
					    "in the DSA master multicast filter?\n",
					    SJA1105_META_DMAC);
			FUNC2(sp->data->stampable_skb);
		}

		/* Hold a reference to avoid dsa_switch_rcv
		 * from freeing the skb.
		 */
		sp->data->stampable_skb = FUNC4(skb);
		FUNC6(&sp->data->meta_lock);

		/* Tell DSA we got nothing */
		return NULL;

	/* Step 2: The meta frame arrived.
	 * Time to take the stampable skb out of the closet, annotate it
	 * with the partial timestamp, and pretend that we received it
	 * just now (basically masquerade the buffered frame as the meta
	 * frame, which serves no further purpose).
	 */
	} else if (is_meta) {
		struct sk_buff *stampable_skb;

		/* Drop the meta frame if we're not in the right state
		 * to process it.
		 */
		if (!FUNC7(SJA1105_HWTS_RX_EN, &sp->data->state))
			return NULL;

		FUNC5(&sp->data->meta_lock);

		stampable_skb = sp->data->stampable_skb;
		sp->data->stampable_skb = NULL;

		/* Was this a meta frame instead of the link-local
		 * that we were expecting?
		 */
		if (!stampable_skb) {
			FUNC0(dp->ds->dev,
					    "Unexpected meta frame\n");
			FUNC6(&sp->data->meta_lock);
			return NULL;
		}

		if (stampable_skb->dev != skb->dev) {
			FUNC0(dp->ds->dev,
					    "Meta frame on wrong port\n");
			FUNC6(&sp->data->meta_lock);
			return NULL;
		}

		/* Free the meta frame and give DSA the buffered stampable_skb
		 * for further processing up the network stack.
		 */
		FUNC2(skb);
		skb = stampable_skb;
		FUNC3(skb, meta);

		FUNC6(&sp->data->meta_lock);
	}

	return skb;
}