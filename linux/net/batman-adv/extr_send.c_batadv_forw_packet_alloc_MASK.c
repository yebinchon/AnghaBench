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
struct sk_buff {int dummy; } ;
struct batadv_priv {int /*<<< orphan*/  batman_queue_left; int /*<<< orphan*/  bcast_queue_left; } ;
struct batadv_hard_iface {int /*<<< orphan*/  refcount; } ;
struct batadv_forw_packet {scalar_t__ num_packets; struct batadv_hard_iface* if_outgoing; struct batadv_hard_iface* if_incoming; int /*<<< orphan*/ * queue_left; struct sk_buff* skb; int /*<<< orphan*/  cleanup_list; int /*<<< orphan*/  list; } ;
typedef  int /*<<< orphan*/  atomic_t ;

/* Variables and functions */
 int /*<<< orphan*/  BATADV_DBG_BATMAN ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct batadv_priv*,char*,char const*) ; 
 struct batadv_forw_packet* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

struct batadv_forw_packet *
FUNC6(struct batadv_hard_iface *if_incoming,
			 struct batadv_hard_iface *if_outgoing,
			 atomic_t *queue_left,
			 struct batadv_priv *bat_priv,
			 struct sk_buff *skb)
{
	struct batadv_forw_packet *forw_packet;
	const char *qname;

	if (queue_left && !FUNC2(queue_left)) {
		qname = "unknown";

		if (queue_left == &bat_priv->bcast_queue_left)
			qname = "bcast";

		if (queue_left == &bat_priv->batman_queue_left)
			qname = "batman";

		FUNC3(BATADV_DBG_BATMAN, bat_priv,
			   "%s queue is full\n", qname);

		return NULL;
	}

	forw_packet = FUNC4(sizeof(*forw_packet), GFP_ATOMIC);
	if (!forw_packet)
		goto err;

	if (if_incoming)
		FUNC5(&if_incoming->refcount);

	if (if_outgoing)
		FUNC5(&if_outgoing->refcount);

	FUNC0(&forw_packet->list);
	FUNC0(&forw_packet->cleanup_list);
	forw_packet->skb = skb;
	forw_packet->queue_left = queue_left;
	forw_packet->if_incoming = if_incoming;
	forw_packet->if_outgoing = if_outgoing;
	forw_packet->num_packets = 0;

	return forw_packet;

err:
	if (queue_left)
		FUNC1(queue_left);

	return NULL;
}