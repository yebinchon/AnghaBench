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
struct sk_buff {int /*<<< orphan*/ * data; } ;
struct TYPE_2__ {scalar_t__ cr; int /*<<< orphan*/ * control; } ;
struct lapb_cb {int mode; int vs; int vr; int /*<<< orphan*/  state; int /*<<< orphan*/  dev; int /*<<< orphan*/  frmr_type; TYPE_1__ frmr_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int LAPB_EXTENDED ; 
 void* LAPB_FRMR ; 
 scalar_t__ LAPB_HEADER_LEN ; 
 scalar_t__ LAPB_RESPONSE ; 
 struct sk_buff* FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct lapb_cb*,struct sk_buff*,scalar_t__) ; 
 unsigned char* FUNC3 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,scalar_t__) ; 

void FUNC5(struct lapb_cb *lapb)
{
	struct sk_buff *skb;
	unsigned char  *dptr;

	if ((skb = FUNC0(LAPB_HEADER_LEN + 7, GFP_ATOMIC)) == NULL)
		return;

	FUNC4(skb, LAPB_HEADER_LEN + 1);

	if (lapb->mode & LAPB_EXTENDED) {
		dptr    = FUNC3(skb, 6);
		*dptr++ = LAPB_FRMR;
		*dptr++ = lapb->frmr_data.control[0];
		*dptr++ = lapb->frmr_data.control[1];
		*dptr++ = (lapb->vs << 1) & 0xFE;
		*dptr   = (lapb->vr << 1) & 0xFE;
		if (lapb->frmr_data.cr == LAPB_RESPONSE)
			*dptr |= 0x01;
		dptr++;
		*dptr++ = lapb->frmr_type;

		FUNC1(1, "(%p) S%d TX FRMR %5ph\n",
			 lapb->dev, lapb->state,
			 &skb->data[1]);
	} else {
		dptr    = FUNC3(skb, 4);
		*dptr++ = LAPB_FRMR;
		*dptr++ = lapb->frmr_data.control[0];
		*dptr   = (lapb->vs << 1) & 0x0E;
		*dptr  |= (lapb->vr << 5) & 0xE0;
		if (lapb->frmr_data.cr == LAPB_RESPONSE)
			*dptr |= 0x10;
		dptr++;
		*dptr++ = lapb->frmr_type;

		FUNC1(1, "(%p) S%d TX FRMR %3ph\n",
			 lapb->dev, lapb->state, &skb->data[1]);
	}

	FUNC2(lapb, skb, LAPB_RESPONSE);
}