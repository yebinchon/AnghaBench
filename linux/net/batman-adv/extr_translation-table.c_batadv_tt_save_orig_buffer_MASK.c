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
typedef  scalar_t__ u16 ;
struct batadv_priv {int dummy; } ;
struct batadv_orig_node {int /*<<< orphan*/  tt_buff_lock; scalar_t__ tt_buff_len; scalar_t__ tt_buff; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,void const*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct batadv_priv *bat_priv,
				       struct batadv_orig_node *orig_node,
				       const void *tt_buff,
				       u16 tt_buff_len)
{
	/* Replace the old buffer only if I received something in the
	 * last OGM (the OGM could carry no changes)
	 */
	FUNC3(&orig_node->tt_buff_lock);
	if (tt_buff_len > 0) {
		FUNC0(orig_node->tt_buff);
		orig_node->tt_buff_len = 0;
		orig_node->tt_buff = FUNC1(tt_buff_len, GFP_ATOMIC);
		if (orig_node->tt_buff) {
			FUNC2(orig_node->tt_buff, tt_buff, tt_buff_len);
			orig_node->tt_buff_len = tt_buff_len;
		}
	}
	FUNC4(&orig_node->tt_buff_lock);
}