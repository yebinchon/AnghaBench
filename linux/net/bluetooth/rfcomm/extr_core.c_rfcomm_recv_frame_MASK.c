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
typedef  int u8 ;
struct sk_buff {scalar_t__ data; int /*<<< orphan*/  tail; int /*<<< orphan*/  len; } ;
struct rfcomm_session {int dummy; } ;
struct rfcomm_hdr {int /*<<< orphan*/  ctrl; int /*<<< orphan*/  len; int /*<<< orphan*/  addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
#define  RFCOMM_DISC 132 
#define  RFCOMM_DM 131 
#define  RFCOMM_SABM 130 
#define  RFCOMM_UA 129 
#define  RFCOMM_UIH 128 
 scalar_t__ FUNC1 (scalar_t__,int,int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC7 (struct rfcomm_session*,int,int /*<<< orphan*/ ,struct sk_buff*) ; 
 struct rfcomm_session* FUNC8 (struct rfcomm_session*,int) ; 
 struct rfcomm_session* FUNC9 (struct rfcomm_session*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct rfcomm_session*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC11 (struct rfcomm_session*,int) ; 
 struct rfcomm_session* FUNC12 (struct rfcomm_session*,int) ; 
 int /*<<< orphan*/  FUNC13 (struct sk_buff*,int) ; 
 scalar_t__ FUNC14 (struct sk_buff*) ; 

__attribute__((used)) static struct rfcomm_session *FUNC15(struct rfcomm_session *s,
						struct sk_buff *skb)
{
	struct rfcomm_hdr *hdr = (void *) skb->data;
	u8 type, dlci, fcs;

	if (!s) {
		/* no session, so free socket data */
		FUNC6(skb);
		return s;
	}

	dlci = FUNC2(hdr->addr);
	type = FUNC3(hdr->ctrl);

	/* Trim FCS */
	skb->len--; skb->tail--;
	fcs = *(u8 *)FUNC14(skb);

	if (FUNC1(skb->data, type, fcs)) {
		FUNC0("bad checksum in packet");
		FUNC6(skb);
		return s;
	}

	if (FUNC4(hdr->len))
		FUNC13(skb, 3);
	else
		FUNC13(skb, 4);

	switch (type) {
	case RFCOMM_SABM:
		if (FUNC5(hdr->ctrl))
			FUNC11(s, dlci);
		break;

	case RFCOMM_DISC:
		if (FUNC5(hdr->ctrl))
			s = FUNC8(s, dlci);
		break;

	case RFCOMM_UA:
		if (FUNC5(hdr->ctrl))
			s = FUNC12(s, dlci);
		break;

	case RFCOMM_DM:
		s = FUNC9(s, dlci);
		break;

	case RFCOMM_UIH:
		if (dlci) {
			FUNC7(s, dlci, FUNC5(hdr->ctrl), skb);
			return s;
		}
		FUNC10(s, skb);
		break;

	default:
		FUNC0("Unknown packet type 0x%02x", type);
		break;
	}
	FUNC6(skb);
	return s;
}