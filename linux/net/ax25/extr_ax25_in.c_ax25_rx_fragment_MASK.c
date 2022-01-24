#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {int* data; scalar_t__ len; int /*<<< orphan*/  dev; } ;
struct TYPE_6__ {int fragno; int /*<<< orphan*/  frag_queue; scalar_t__ fraglen; TYPE_1__* ax25_dev; } ;
typedef  TYPE_2__ ax25_cb ;
struct TYPE_5__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ AX25_MAX_HEADER_LEN ; 
 int AX25_SEG_FIRST ; 
 int AX25_SEG_REM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 struct sk_buff* FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (TYPE_2__*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,int /*<<< orphan*/ ,scalar_t__) ; 
 struct sk_buff* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC11 (struct sk_buff*) ; 

__attribute__((used)) static int FUNC12(ax25_cb *ax25, struct sk_buff *skb)
{
	struct sk_buff *skbn, *skbo;

	if (ax25->fragno != 0) {
		if (!(*skb->data & AX25_SEG_FIRST)) {
			if ((ax25->fragno - 1) == (*skb->data & AX25_SEG_REM)) {
				/* Enqueue fragment */
				ax25->fragno = *skb->data & AX25_SEG_REM;
				FUNC5(skb, 1);	/* skip fragno */
				ax25->fraglen += skb->len;
				FUNC8(&ax25->frag_queue, skb);

				/* Last fragment received ? */
				if (ax25->fragno == 0) {
					skbn = FUNC0(AX25_MAX_HEADER_LEN +
							 ax25->fraglen,
							 GFP_ATOMIC);
					if (!skbn) {
						FUNC7(&ax25->frag_queue);
						return 1;
					}

					FUNC9(skbn, AX25_MAX_HEADER_LEN);

					skbn->dev   = ax25->ax25_dev->dev;
					FUNC10(skbn);
					FUNC11(skbn);

					/* Copy data from the fragments */
					while ((skbo = FUNC4(&ax25->frag_queue)) != NULL) {
						FUNC3(skbo,
							  FUNC6(skbn, skbo->len),
									  skbo->len);
						FUNC2(skbo);
					}

					ax25->fraglen = 0;

					if (FUNC1(ax25, skbn) == 0)
						FUNC2(skbn);
				}

				return 1;
			}
		}
	} else {
		/* First fragment received */
		if (*skb->data & AX25_SEG_FIRST) {
			FUNC7(&ax25->frag_queue);
			ax25->fragno = *skb->data & AX25_SEG_REM;
			FUNC5(skb, 1);		/* skip fragno */
			ax25->fraglen = skb->len;
			FUNC8(&ax25->frag_queue, skb);
			return 1;
		}
	}

	return 0;
}