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
struct j1939_priv {int /*<<< orphan*/  tp_max_packet_size; int /*<<< orphan*/  active_session_list; int /*<<< orphan*/  active_session_list_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  J1939_MAX_ETP_PACKET_SIZE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

void FUNC2(struct j1939_priv *priv)
{
	FUNC1(&priv->active_session_list_lock);
	FUNC0(&priv->active_session_list);
	priv->tp_max_packet_size = J1939_MAX_ETP_PACKET_SIZE;
}