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
typedef  int /*<<< orphan*/  u8 ;
struct mesh_path {int is_root; int /*<<< orphan*/  timer; int /*<<< orphan*/  state_lock; int /*<<< orphan*/  exp_time; int /*<<< orphan*/  frame_queue; scalar_t__ flags; struct ieee80211_sub_if_data* sdata; int /*<<< orphan*/  rann_snd_addr; int /*<<< orphan*/  dst; } ;
struct ieee80211_sub_if_data {int dummy; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  jiffies ; 
 struct mesh_path* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mesh_path_timer ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static
struct mesh_path *FUNC6(struct ieee80211_sub_if_data *sdata,
				const u8 *dst, gfp_t gfp_flags)
{
	struct mesh_path *new_mpath;

	new_mpath = FUNC1(sizeof(struct mesh_path), gfp_flags);
	if (!new_mpath)
		return NULL;

	FUNC2(new_mpath->dst, dst, ETH_ALEN);
	FUNC0(new_mpath->rann_snd_addr);
	new_mpath->is_root = false;
	new_mpath->sdata = sdata;
	new_mpath->flags = 0;
	FUNC3(&new_mpath->frame_queue);
	new_mpath->exp_time = jiffies;
	FUNC4(&new_mpath->state_lock);
	FUNC5(&new_mpath->timer, mesh_path_timer, 0);

	return new_mpath;
}