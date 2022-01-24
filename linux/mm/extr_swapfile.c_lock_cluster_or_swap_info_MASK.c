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
struct swap_info_struct {int /*<<< orphan*/  lock; } ;
struct swap_cluster_info {int dummy; } ;

/* Variables and functions */
 struct swap_cluster_info* FUNC0 (struct swap_info_struct*,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline struct swap_cluster_info *FUNC2(
		struct swap_info_struct *si, unsigned long offset)
{
	struct swap_cluster_info *ci;

	/* Try to use fine-grained SSD-style locking if available: */
	ci = FUNC0(si, offset);
	/* Otherwise, fall back to traditional, coarse locking: */
	if (!ci)
		FUNC1(&si->lock);

	return ci;
}