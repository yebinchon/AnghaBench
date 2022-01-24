#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  scalar_t__ u32 ;
struct TYPE_6__ {int /*<<< orphan*/  ogm_cnt_lock; } ;
struct batadv_orig_node {TYPE_3__ bat_iv; } ;
struct TYPE_5__ {int /*<<< orphan*/  bcast_own; int /*<<< orphan*/  bcast_own_sum; } ;
struct batadv_orig_ifinfo {TYPE_2__ bat_iv; } ;
struct batadv_ogm_packet {int flags; int /*<<< orphan*/  seqno; int /*<<< orphan*/  orig; } ;
struct batadv_hard_iface {TYPE_1__* net_dev; } ;
typedef  scalar_t__ s32 ;
struct TYPE_4__ {int /*<<< orphan*/  dev_addr; } ;

/* Variables and functions */
 int BATADV_DIRECTLINK ; 
 int /*<<< orphan*/  BATADV_TQ_LOCAL_WINDOW_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct batadv_orig_ifinfo* FUNC1 (struct batadv_orig_node*,struct batadv_hard_iface*) ; 
 int /*<<< orphan*/  FUNC2 (struct batadv_orig_ifinfo*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(struct batadv_ogm_packet *ogm_packet,
					struct batadv_hard_iface *if_incoming,
					struct batadv_orig_node *orig_node,
					u32 if_incoming_seqno)
{
	struct batadv_orig_ifinfo *orig_ifinfo;
	s32 bit_pos;
	u8 *weight;

	/* neighbor has to indicate direct link and it has to
	 * come via the corresponding interface
	 */
	if (!(ogm_packet->flags & BATADV_DIRECTLINK))
		return;

	if (!FUNC0(if_incoming->net_dev->dev_addr,
				ogm_packet->orig))
		return;

	orig_ifinfo = FUNC1(orig_node, if_incoming);
	if (!orig_ifinfo)
		return;

	/* save packet seqno for bidirectional check */
	FUNC6(&orig_node->bat_iv.ogm_cnt_lock);
	bit_pos = if_incoming_seqno - 2;
	bit_pos -= FUNC5(ogm_packet->seqno);
	FUNC3(orig_ifinfo->bat_iv.bcast_own, bit_pos);
	weight = &orig_ifinfo->bat_iv.bcast_own_sum;
	*weight = FUNC4(orig_ifinfo->bat_iv.bcast_own,
				BATADV_TQ_LOCAL_WINDOW_SIZE);
	FUNC7(&orig_node->bat_iv.ogm_cnt_lock);

	FUNC2(orig_ifinfo);
}