#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  diagnostic; int /*<<< orphan*/  cause; } ;
struct TYPE_5__ {unsigned char* cuddata; int cudlength; } ;
struct TYPE_8__ {int reverse; } ;
struct x25_sock {int lci; int vr; TYPE_3__* neighbour; TYPE_2__ causediag; TYPE_1__ calluserdata; TYPE_4__ facilities; int /*<<< orphan*/  vc_facil_mask; int /*<<< orphan*/  dte_facilities; int /*<<< orphan*/  source_addr; int /*<<< orphan*/  dest_addr; } ;
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct TYPE_7__ {scalar_t__ extended; int /*<<< orphan*/  global_facil_mask; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  X25_ADDR_LEN ; 
#define  X25_CALL_ACCEPTED 137 
#define  X25_CALL_REQUEST 136 
#define  X25_CLEAR_CONFIRMATION 135 
#define  X25_CLEAR_REQUEST 134 
 int X25_EXT_MIN_LEN ; 
 unsigned char X25_GFI_EXTSEQ ; 
 unsigned char X25_GFI_STDSEQ ; 
#define  X25_INTERRUPT_CONFIRMATION 133 
 int X25_MAX_CUD_LEN ; 
 int X25_MAX_FAC_LEN ; 
 int X25_MAX_L2_LEN ; 
#define  X25_REJ 132 
#define  X25_RESET_CONFIRMATION 131 
#define  X25_RESET_REQUEST 130 
#define  X25_RNR 129 
#define  X25_RR 128 
 struct sk_buff* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 unsigned char* FUNC2 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,int) ; 
 int FUNC5 (unsigned char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC6 (unsigned char*,TYPE_4__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct x25_sock* FUNC7 (struct sock*) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*,TYPE_3__*) ; 

void FUNC9(struct sock *sk, int frametype)
{
	struct x25_sock *x25 = FUNC7(sk);
	struct sk_buff *skb;
	unsigned char  *dptr;
	unsigned char  facilities[X25_MAX_FAC_LEN];
	unsigned char  addresses[1 + X25_ADDR_LEN];
	unsigned char  lci1, lci2;
	/*
	 *	Default safe frame size.
	 */
	int len = X25_MAX_L2_LEN + X25_EXT_MIN_LEN;

	/*
	 *	Adjust frame size.
	 */
	switch (frametype) {
	case X25_CALL_REQUEST:
		len += 1 + X25_ADDR_LEN + X25_MAX_FAC_LEN + X25_MAX_CUD_LEN;
		break;
	case X25_CALL_ACCEPTED: /* fast sel with no restr on resp */
		if (x25->facilities.reverse & 0x80) {
			len += 1 + X25_MAX_FAC_LEN + X25_MAX_CUD_LEN;
		} else {
			len += 1 + X25_MAX_FAC_LEN;
		}
		break;
	case X25_CLEAR_REQUEST:
	case X25_RESET_REQUEST:
		len += 2;
		break;
	case X25_RR:
	case X25_RNR:
	case X25_REJ:
	case X25_CLEAR_CONFIRMATION:
	case X25_INTERRUPT_CONFIRMATION:
	case X25_RESET_CONFIRMATION:
		break;
	default:
		FUNC1("invalid frame type %02X\n", frametype);
		return;
	}

	if ((skb = FUNC0(len, GFP_ATOMIC)) == NULL)
		return;

	/*
	 *	Space for Ethernet and 802.2 LLC headers.
	 */
	FUNC4(skb, X25_MAX_L2_LEN);

	/*
	 *	Make space for the GFI and LCI, and fill them in.
	 */
	dptr = FUNC2(skb, 2);

	lci1 = (x25->lci >> 8) & 0x0F;
	lci2 = (x25->lci >> 0) & 0xFF;

	if (x25->neighbour->extended) {
		*dptr++ = lci1 | X25_GFI_EXTSEQ;
		*dptr++ = lci2;
	} else {
		*dptr++ = lci1 | X25_GFI_STDSEQ;
		*dptr++ = lci2;
	}

	/*
	 *	Now fill in the frame type specific information.
	 */
	switch (frametype) {

		case X25_CALL_REQUEST:
			dptr    = FUNC2(skb, 1);
			*dptr++ = X25_CALL_REQUEST;
			len     = FUNC5(addresses, &x25->dest_addr,
						&x25->source_addr);
			FUNC3(skb, addresses, len);
			len     = FUNC6(facilities,
					&x25->facilities,
					&x25->dte_facilities,
					x25->neighbour->global_facil_mask);
			FUNC3(skb, facilities, len);
			FUNC3(skb, x25->calluserdata.cuddata,
				     x25->calluserdata.cudlength);
			x25->calluserdata.cudlength = 0;
			break;

		case X25_CALL_ACCEPTED:
			dptr    = FUNC2(skb, 2);
			*dptr++ = X25_CALL_ACCEPTED;
			*dptr++ = 0x00;		/* Address lengths */
			len     = FUNC6(facilities,
							&x25->facilities,
							&x25->dte_facilities,
							x25->vc_facil_mask);
			FUNC3(skb, facilities, len);

			/* fast select with no restriction on response
				allows call user data. Userland must
				ensure it is ours and not theirs */
			if(x25->facilities.reverse & 0x80) {
				FUNC3(skb,
					     x25->calluserdata.cuddata,
					     x25->calluserdata.cudlength);
			}
			x25->calluserdata.cudlength = 0;
			break;

		case X25_CLEAR_REQUEST:
			dptr    = FUNC2(skb, 3);
			*dptr++ = frametype;
			*dptr++ = x25->causediag.cause;
			*dptr++ = x25->causediag.diagnostic;
			break;

		case X25_RESET_REQUEST:
			dptr    = FUNC2(skb, 3);
			*dptr++ = frametype;
			*dptr++ = 0x00;		/* XXX */
			*dptr++ = 0x00;		/* XXX */
			break;

		case X25_RR:
		case X25_RNR:
		case X25_REJ:
			if (x25->neighbour->extended) {
				dptr     = FUNC2(skb, 2);
				*dptr++  = frametype;
				*dptr++  = (x25->vr << 1) & 0xFE;
			} else {
				dptr     = FUNC2(skb, 1);
				*dptr    = frametype;
				*dptr++ |= (x25->vr << 5) & 0xE0;
			}
			break;

		case X25_CLEAR_CONFIRMATION:
		case X25_INTERRUPT_CONFIRMATION:
		case X25_RESET_CONFIRMATION:
			dptr  = FUNC2(skb, 1);
			*dptr = frametype;
			break;
	}

	FUNC8(skb, x25->neighbour);
}