#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {int dummy; } ;
struct TYPE_5__ {scalar_t__ modulus; int vr; int vs; } ;
typedef  TYPE_1__ ax25_cb ;

/* Variables and functions */
 int /*<<< orphan*/  AX25_COMMAND ; 
 unsigned char AX25_EPF ; 
 unsigned char AX25_I ; 
 scalar_t__ AX25_MODULUS ; 
 unsigned char AX25_PF ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,struct sk_buff*,int /*<<< orphan*/ ) ; 
 unsigned char* FUNC2 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 

__attribute__((used)) static void FUNC4(ax25_cb *ax25, struct sk_buff *skb, int poll_bit)
{
	unsigned char *frame;

	if (skb == NULL)
		return;

	FUNC3(skb);

	if (ax25->modulus == AX25_MODULUS) {
		frame = FUNC2(skb, 1);

		*frame = AX25_I;
		*frame |= (poll_bit) ? AX25_PF : 0;
		*frame |= (ax25->vr << 5);
		*frame |= (ax25->vs << 1);
	} else {
		frame = FUNC2(skb, 2);

		frame[0] = AX25_I;
		frame[0] |= (ax25->vs << 1);
		frame[1] = (poll_bit) ? AX25_EPF : 0;
		frame[1] |= (ax25->vr << 1);
	}

	FUNC0(ax25);

	FUNC1(ax25, skb, AX25_COMMAND);
}