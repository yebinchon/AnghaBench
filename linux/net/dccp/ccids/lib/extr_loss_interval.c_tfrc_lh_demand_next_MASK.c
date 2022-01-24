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
struct tfrc_loss_interval {int dummy; } ;
struct tfrc_loss_hist {int /*<<< orphan*/  counter; struct tfrc_loss_interval** ring; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 struct tfrc_loss_interval* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tfrc_lh_slab ; 

__attribute__((used)) static struct tfrc_loss_interval *FUNC2(struct tfrc_loss_hist *lh)
{
	if (lh->ring[FUNC0(lh->counter)] == NULL)
		lh->ring[FUNC0(lh->counter)] = FUNC1(tfrc_lh_slab,
								    GFP_ATOMIC);
	return lh->ring[FUNC0(lh->counter)];
}