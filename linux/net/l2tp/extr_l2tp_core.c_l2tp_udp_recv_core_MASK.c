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
typedef  int u32 ;
typedef  int u16 ;
struct udphdr {int dummy; } ;
struct sk_buff {int len; unsigned char* data; } ;
struct l2tp_tunnel {int debug; int version; int tunnel_id; int /*<<< orphan*/  name; } ;
struct l2tp_session {int /*<<< orphan*/  recv_skb; } ;
typedef  int /*<<< orphan*/  __be32 ;
typedef  int /*<<< orphan*/  __be16 ;

/* Variables and functions */
 int /*<<< orphan*/  DUMP_PREFIX_OFFSET ; 
 int L2TP_HDRFLAG_L ; 
 int L2TP_HDRFLAG_T ; 
 int L2TP_HDR_SIZE_MAX ; 
 int L2TP_HDR_VER_2 ; 
 int L2TP_HDR_VER_3 ; 
 int L2TP_HDR_VER_MASK ; 
 int L2TP_MSG_DATA ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct l2tp_tunnel*,int,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct l2tp_tunnel*,int,char*,int /*<<< orphan*/ ,int,...) ; 
 int /*<<< orphan*/  FUNC4 (struct l2tp_session*,struct sk_buff*,unsigned char*,unsigned char*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct l2tp_session*) ; 
 struct l2tp_session* FUNC6 (struct l2tp_tunnel*,int) ; 
 scalar_t__ FUNC7 (struct l2tp_session*,struct sk_buff*,unsigned char**,unsigned char**) ; 
 int FUNC8 (unsigned int,int) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (char*,int /*<<< orphan*/ ,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC13 (struct sk_buff*,int) ; 

__attribute__((used)) static int FUNC14(struct l2tp_tunnel *tunnel, struct sk_buff *skb)
{
	struct l2tp_session *session = NULL;
	unsigned char *ptr, *optr;
	u16 hdrflags;
	u32 tunnel_id, session_id;
	u16 version;
	int length;

	/* UDP has verifed checksum */

	/* UDP always verifies the packet length. */
	FUNC0(skb, sizeof(struct udphdr));

	/* Short packet? */
	if (!FUNC13(skb, L2TP_HDR_SIZE_MAX)) {
		FUNC3(tunnel, L2TP_MSG_DATA,
			  "%s: recv short packet (len=%d)\n",
			  tunnel->name, skb->len);
		goto error;
	}

	/* Trace packet contents, if enabled */
	if (tunnel->debug & L2TP_MSG_DATA) {
		length = FUNC8(32u, skb->len);
		if (!FUNC13(skb, length))
			goto error;

		FUNC11("%s: recv\n", tunnel->name);
		FUNC12("", DUMP_PREFIX_OFFSET, skb->data, length);
	}

	/* Point to L2TP header */
	optr = ptr = skb->data;

	/* Get L2TP header flags */
	hdrflags = FUNC10(*(__be16 *) ptr);

	/* Check protocol version */
	version = hdrflags & L2TP_HDR_VER_MASK;
	if (version != tunnel->version) {
		FUNC3(tunnel, L2TP_MSG_DATA,
			  "%s: recv protocol version mismatch: got %d expected %d\n",
			  tunnel->name, version, tunnel->version);
		goto error;
	}

	/* Get length of L2TP packet */
	length = skb->len;

	/* If type is control packet, it is handled by userspace. */
	if (hdrflags & L2TP_HDRFLAG_T) {
		FUNC2(tunnel, L2TP_MSG_DATA,
			 "%s: recv control packet, len=%d\n",
			 tunnel->name, length);
		goto error;
	}

	/* Skip flags */
	ptr += 2;

	if (tunnel->version == L2TP_HDR_VER_2) {
		/* If length is present, skip it */
		if (hdrflags & L2TP_HDRFLAG_L)
			ptr += 2;

		/* Extract tunnel and session ID */
		tunnel_id = FUNC10(*(__be16 *) ptr);
		ptr += 2;
		session_id = FUNC10(*(__be16 *) ptr);
		ptr += 2;
	} else {
		ptr += 2;	/* skip reserved bits */
		tunnel_id = tunnel->tunnel_id;
		session_id = FUNC9(*(__be32 *) ptr);
		ptr += 4;
	}

	/* Find the session context */
	session = FUNC6(tunnel, session_id);
	if (!session || !session->recv_skb) {
		if (session)
			FUNC5(session);

		/* Not found? Pass to userspace to deal with */
		FUNC3(tunnel, L2TP_MSG_DATA,
			  "%s: no session found (%u/%u). Passing up.\n",
			  tunnel->name, tunnel_id, session_id);
		goto error;
	}

	if (tunnel->version == L2TP_HDR_VER_3 &&
	    FUNC7(session, skb, &ptr, &optr))
		goto error;

	FUNC4(session, skb, ptr, optr, hdrflags, length);
	FUNC5(session);

	return 0;

error:
	/* Put UDP header back */
	FUNC1(skb, sizeof(struct udphdr));

	return 1;
}