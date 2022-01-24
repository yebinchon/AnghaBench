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
typedef  int u16 ;
struct sk_buff {int len; scalar_t__ data; } ;
struct l2cap_chan {struct amp_mgr* data; } ;
struct amp_mgr {int /*<<< orphan*/  ident; } ;
struct a2mp_cmd_rej {int /*<<< orphan*/  reason; } ;
struct a2mp_cmd {int code; int /*<<< orphan*/  ident; int /*<<< orphan*/  len; } ;
typedef  int /*<<< orphan*/  rej ;

/* Variables and functions */
#define  A2MP_CHANGE_NOTIFY 140 
#define  A2MP_CHANGE_RSP 139 
#define  A2MP_COMMAND_REJ 138 
#define  A2MP_CREATEPHYSLINK_REQ 137 
#define  A2MP_CREATEPHYSLINK_RSP 136 
#define  A2MP_DISCONNPHYSLINK_REQ 135 
#define  A2MP_DISCONNPHYSLINK_RSP 134 
#define  A2MP_DISCOVER_REQ 133 
#define  A2MP_DISCOVER_RSP 132 
#define  A2MP_GETAMPASSOC_REQ 131 
#define  A2MP_GETAMPASSOC_RSP 130 
#define  A2MP_GETINFO_REQ 129 
#define  A2MP_GETINFO_RSP 128 
 int /*<<< orphan*/  FUNC0 (char*,int,int,...) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int EINVAL ; 
 int FUNC2 (struct amp_mgr*,struct sk_buff*,struct a2mp_cmd*) ; 
 int FUNC3 (struct amp_mgr*,struct sk_buff*,struct a2mp_cmd*) ; 
 int /*<<< orphan*/  FUNC4 (struct amp_mgr*,struct sk_buff*,struct a2mp_cmd*) ; 
 int FUNC5 (struct amp_mgr*,struct sk_buff*,struct a2mp_cmd*) ; 
 int FUNC6 (struct amp_mgr*,struct sk_buff*,struct a2mp_cmd*) ; 
 int FUNC7 (struct amp_mgr*,struct sk_buff*,struct a2mp_cmd*) ; 
 int FUNC8 (struct amp_mgr*,struct sk_buff*,struct a2mp_cmd*) ; 
 int FUNC9 (struct amp_mgr*,struct sk_buff*,struct a2mp_cmd*) ; 
 int FUNC10 (struct amp_mgr*,struct sk_buff*,struct a2mp_cmd*) ; 
 int FUNC11 (struct amp_mgr*,struct sk_buff*,struct a2mp_cmd*) ; 
 int FUNC12 (struct amp_mgr*,struct sk_buff*,struct a2mp_cmd*) ; 
 int /*<<< orphan*/  FUNC13 (struct amp_mgr*,int const,int /*<<< orphan*/ ,int,struct a2mp_cmd_rej*) ; 
 int /*<<< orphan*/  FUNC14 (struct amp_mgr*) ; 
 int /*<<< orphan*/  FUNC15 (struct amp_mgr*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct sk_buff*) ; 
 int FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (struct sk_buff*,int) ; 

__attribute__((used)) static int FUNC20(struct l2cap_chan *chan, struct sk_buff *skb)
{
	struct a2mp_cmd *hdr;
	struct amp_mgr *mgr = chan->data;
	int err = 0;

	FUNC14(mgr);

	while (skb->len >= sizeof(*hdr)) {
		u16 len;

		hdr = (void *) skb->data;
		len = FUNC18(hdr->len);

		FUNC0("code 0x%2.2x id %d len %u", hdr->code, hdr->ident, len);

		FUNC19(skb, sizeof(*hdr));

		if (len > skb->len || !hdr->ident) {
			err = -EINVAL;
			break;
		}

		mgr->ident = hdr->ident;

		switch (hdr->code) {
		case A2MP_COMMAND_REJ:
			FUNC4(mgr, skb, hdr);
			break;

		case A2MP_DISCOVER_REQ:
			err = FUNC6(mgr, skb, hdr);
			break;

		case A2MP_CHANGE_NOTIFY:
			err = FUNC2(mgr, skb, hdr);
			break;

		case A2MP_GETINFO_REQ:
			err = FUNC11(mgr, skb, hdr);
			break;

		case A2MP_GETAMPASSOC_REQ:
			err = FUNC9(mgr, skb, hdr);
			break;

		case A2MP_CREATEPHYSLINK_REQ:
			err = FUNC5(mgr, skb, hdr);
			break;

		case A2MP_DISCONNPHYSLINK_REQ:
			err = FUNC8(mgr, skb, hdr);
			break;

		case A2MP_DISCOVER_RSP:
			err = FUNC7(mgr, skb, hdr);
			break;

		case A2MP_GETINFO_RSP:
			err = FUNC12(mgr, skb, hdr);
			break;

		case A2MP_GETAMPASSOC_RSP:
			err = FUNC10(mgr, skb, hdr);
			break;

		case A2MP_CHANGE_RSP:
		case A2MP_CREATEPHYSLINK_RSP:
		case A2MP_DISCONNPHYSLINK_RSP:
			err = FUNC3(mgr, skb, hdr);
			break;

		default:
			FUNC1("Unknown A2MP sig cmd 0x%2.2x", hdr->code);
			err = -EINVAL;
			break;
		}
	}

	if (err) {
		struct a2mp_cmd_rej rej;

		rej.reason = FUNC16(0);
		hdr = (void *) skb->data;

		FUNC0("Send A2MP Rej: cmd 0x%2.2x err %d", hdr->code, err);

		FUNC13(mgr, A2MP_COMMAND_REJ, hdr->ident, sizeof(rej),
			  &rej);
	}

	/* Always free skb and return success error code to prevent
	   from sending L2CAP Disconnect over A2MP channel */
	FUNC17(skb);

	FUNC15(mgr);

	return 0;
}