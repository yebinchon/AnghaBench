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
struct sk_buff {TYPE_4__* sk; } ;
struct TYPE_6__ {scalar_t__ pgn; scalar_t__ type; size_t da; } ;
struct j1939_sk_buff_cb {scalar_t__ tskey; TYPE_2__ addr; int /*<<< orphan*/  flags; } ;
struct TYPE_7__ {size_t total; int block; size_t last; } ;
struct j1939_session {int transmission; scalar_t__ tskey; TYPE_4__* sk; TYPE_3__ pkt; struct j1939_sk_buff_cb skcb; } ;
struct j1939_priv {size_t tp_max_packet_size; TYPE_1__* ents; } ;
struct TYPE_8__ {int /*<<< orphan*/  sk_tskey; } ;
struct TYPE_5__ {scalar_t__ nusers; } ;

/* Variables and functions */
 int EDESTADDRREQ ; 
 int EDOM ; 
 int EMSGSIZE ; 
 int ENOMEM ; 
 struct j1939_session* FUNC0 (int) ; 
 int /*<<< orphan*/  J1939_ECU_LOCAL_DST ; 
 int /*<<< orphan*/  J1939_ECU_LOCAL_SRC ; 
 scalar_t__ J1939_ETP ; 
 scalar_t__ J1939_ETP_PGN_CTL ; 
 scalar_t__ J1939_ETP_PGN_DAT ; 
 size_t J1939_MAX_TP_PACKET_SIZE ; 
 scalar_t__ J1939_SIMPLE ; 
 scalar_t__ J1939_TP ; 
 scalar_t__ J1939_TP_PGN_CTL ; 
 scalar_t__ J1939_TP_PGN_DAT ; 
 int FUNC1 (struct j1939_priv*,struct sk_buff*) ; 
 scalar_t__ FUNC2 (size_t) ; 
 scalar_t__ FUNC3 (struct j1939_sk_buff_cb*) ; 
 struct j1939_session* FUNC4 (struct j1939_priv*,struct sk_buff*,size_t) ; 
 struct j1939_sk_buff_cb* FUNC5 (struct sk_buff*) ; 
 scalar_t__ j1939_tp_block ; 
 int FUNC6 (int,size_t) ; 
 scalar_t__ FUNC7 (int) ; 

struct j1939_session *FUNC8(struct j1939_priv *priv,
				    struct sk_buff *skb, size_t size)
{
	struct j1939_sk_buff_cb *skcb = FUNC5(skb);
	struct j1939_session *session;
	int ret;

	if (skcb->addr.pgn == J1939_TP_PGN_DAT ||
	    skcb->addr.pgn == J1939_TP_PGN_CTL ||
	    skcb->addr.pgn == J1939_ETP_PGN_DAT ||
	    skcb->addr.pgn == J1939_ETP_PGN_CTL)
		/* avoid conflict */
		return FUNC0(-EDOM);

	if (size > priv->tp_max_packet_size)
		return FUNC0(-EMSGSIZE);

	if (size <= 8)
		skcb->addr.type = J1939_SIMPLE;
	else if (size > J1939_MAX_TP_PACKET_SIZE)
		skcb->addr.type = J1939_ETP;
	else
		skcb->addr.type = J1939_TP;

	if (skcb->addr.type == J1939_ETP &&
	    FUNC3(skcb))
		return FUNC0(-EDESTADDRREQ);

	/* fill in addresses from names */
	ret = FUNC1(priv, skb);
	if (FUNC7(ret))
		return FUNC0(ret);

	/* fix DST flags, it may be used there soon */
	if (FUNC2(skcb->addr.da) &&
	    priv->ents[skcb->addr.da].nusers)
		skcb->flags |= J1939_ECU_LOCAL_DST;

	/* src is always local, I'm sending ... */
	skcb->flags |= J1939_ECU_LOCAL_SRC;

	/* prepare new session */
	session = FUNC4(priv, skb, size);
	if (!session)
		return FUNC0(-ENOMEM);

	/* skb is recounted in j1939_session_new() */
	session->sk = skb->sk;
	session->transmission = true;
	session->pkt.total = (size + 6) / 7;
	session->pkt.block = skcb->addr.type == J1939_ETP ? 255 :
		FUNC6(j1939_tp_block ?: 255, session->pkt.total);

	if (FUNC3(&session->skcb))
		/* set the end-packet for broadcast */
		session->pkt.last = session->pkt.total;

	skcb->tskey = session->sk->sk_tskey++;
	session->tskey = skcb->tskey;

	return session;
}