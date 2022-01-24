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
struct net_bridge {int dummy; } ;
struct br_boolopt_multi {int optval; int /*<<< orphan*/  optmask; } ;

/* Variables and functions */
 int BR_BOOLOPT_MAX ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct net_bridge const*,int) ; 

void FUNC2(const struct net_bridge *br,
			  struct br_boolopt_multi *bm)
{
	u32 optval = 0;
	int opt_id;

	for (opt_id = 0; opt_id < BR_BOOLOPT_MAX; opt_id++)
		optval |= (FUNC1(br, opt_id) << opt_id);

	bm->optval = optval;
	bm->optmask = FUNC0((BR_BOOLOPT_MAX - 1), 0);
}