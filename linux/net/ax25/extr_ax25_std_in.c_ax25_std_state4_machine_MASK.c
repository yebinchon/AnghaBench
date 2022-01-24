#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {int dummy; } ;
struct TYPE_19__ {int modulus; int condition; int vr; void* state; int /*<<< orphan*/  va; int /*<<< orphan*/  vs; int /*<<< orphan*/  n2count; TYPE_1__* ax25_dev; int /*<<< orphan*/  window; } ;
typedef  TYPE_2__ ax25_cb ;
struct TYPE_18__ {int /*<<< orphan*/ * values; } ;

/* Variables and functions */
 int AX25_COMMAND ; 
 int AX25_COND_ACK_PENDING ; 
 int AX25_COND_OWN_RX_BUSY ; 
 int AX25_COND_PEER_RX_BUSY ; 
 int AX25_COND_REJECT ; 
#define  AX25_DISC 137 
#define  AX25_DM 136 
 int AX25_EMODULUS ; 
#define  AX25_FRMR 135 
#define  AX25_I 134 
#define  AX25_ILLEGAL 133 
 int AX25_MODULUS ; 
#define  AX25_REJ 132 
 int AX25_RESPONSE ; 
#define  AX25_RNR 131 
#define  AX25_RR 130 
#define  AX25_SABM 129 
#define  AX25_SABME 128 
 void* AX25_STATE_1 ; 
 void* AX25_STATE_3 ; 
 int const AX25_UA ; 
 size_t AX25_VALUES_EWINDOW ; 
 size_t AX25_VALUES_WINDOW ; 
 int /*<<< orphan*/  ECONNRESET ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int FUNC3 (TYPE_2__*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int const,int,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__*,int) ; 

__attribute__((used)) static int FUNC14(ax25_cb *ax25, struct sk_buff *skb, int frametype, int ns, int nr, int pf, int type)
{
	int queued = 0;

	switch (frametype) {
	case AX25_SABM:
	case AX25_SABME:
		if (frametype == AX25_SABM) {
			ax25->modulus = AX25_MODULUS;
			ax25->window  = ax25->ax25_dev->values[AX25_VALUES_WINDOW];
		} else {
			ax25->modulus = AX25_EMODULUS;
			ax25->window  = ax25->ax25_dev->values[AX25_VALUES_EWINDOW];
		}
		FUNC4(ax25, AX25_UA, pf, AX25_RESPONSE);
		FUNC11(ax25);
		FUNC12(ax25);
		FUNC7(ax25);
		FUNC5(ax25);
		ax25->condition = 0x00;
		ax25->vs        = 0;
		ax25->va        = 0;
		ax25->vr        = 0;
		ax25->state     = AX25_STATE_3;
		ax25->n2count   = 0;
		FUNC2(ax25);
		break;

	case AX25_DISC:
		FUNC4(ax25, AX25_UA, pf, AX25_RESPONSE);
		FUNC0(ax25, 0);
		break;

	case AX25_DM:
		FUNC0(ax25, ECONNRESET);
		break;

	case AX25_RR:
	case AX25_RNR:
		if (frametype == AX25_RR)
			ax25->condition &= ~AX25_COND_PEER_RX_BUSY;
		else
			ax25->condition |= AX25_COND_PEER_RX_BUSY;
		if (type == AX25_RESPONSE && pf) {
			FUNC11(ax25);
			ax25->n2count = 0;
			if (FUNC13(ax25, nr)) {
				FUNC1(ax25, nr);
				if (ax25->vs == ax25->va) {
					FUNC7(ax25);
					ax25->state   = AX25_STATE_3;
				} else {
					FUNC2(ax25);
				}
			} else {
				FUNC10(ax25);
				ax25->state = AX25_STATE_1;
			}
			break;
		}
		if (type == AX25_COMMAND && pf)
			FUNC8(ax25);
		if (FUNC13(ax25, nr)) {
			FUNC1(ax25, nr);
		} else {
			FUNC10(ax25);
			ax25->state = AX25_STATE_1;
		}
		break;

	case AX25_REJ:
		ax25->condition &= ~AX25_COND_PEER_RX_BUSY;
		if (pf && type == AX25_RESPONSE) {
			FUNC11(ax25);
			ax25->n2count = 0;
			if (FUNC13(ax25, nr)) {
				FUNC1(ax25, nr);
				if (ax25->vs == ax25->va) {
					FUNC7(ax25);
					ax25->state   = AX25_STATE_3;
				} else {
					FUNC2(ax25);
				}
			} else {
				FUNC10(ax25);
				ax25->state = AX25_STATE_1;
			}
			break;
		}
		if (type == AX25_COMMAND && pf)
			FUNC8(ax25);
		if (FUNC13(ax25, nr)) {
			FUNC1(ax25, nr);
			FUNC2(ax25);
		} else {
			FUNC10(ax25);
			ax25->state = AX25_STATE_1;
		}
		break;

	case AX25_I:
		if (!FUNC13(ax25, nr)) {
			FUNC10(ax25);
			ax25->state = AX25_STATE_1;
			break;
		}
		FUNC1(ax25, nr);
		if (ax25->condition & AX25_COND_OWN_RX_BUSY) {
			if (pf)
				FUNC8(ax25);
			break;
		}
		if (ns == ax25->vr) {
			ax25->vr = (ax25->vr + 1) % ax25->modulus;
			queued = FUNC3(ax25, skb);
			if (ax25->condition & AX25_COND_OWN_RX_BUSY)
				ax25->vr = ns;	/* ax25->vr - 1 */
			ax25->condition &= ~AX25_COND_REJECT;
			if (pf) {
				FUNC8(ax25);
			} else {
				if (!(ax25->condition & AX25_COND_ACK_PENDING)) {
					ax25->condition |= AX25_COND_ACK_PENDING;
					FUNC6(ax25);
				}
			}
		} else {
			if (ax25->condition & AX25_COND_REJECT) {
				if (pf) FUNC8(ax25);
			} else {
				ax25->condition |= AX25_COND_REJECT;
				FUNC4(ax25, AX25_REJ, pf, AX25_RESPONSE);
				ax25->condition &= ~AX25_COND_ACK_PENDING;
			}
		}
		break;

	case AX25_FRMR:
	case AX25_ILLEGAL:
		FUNC9(ax25);
		ax25->state = AX25_STATE_1;
		break;

	default:
		break;
	}

	return queued;
}