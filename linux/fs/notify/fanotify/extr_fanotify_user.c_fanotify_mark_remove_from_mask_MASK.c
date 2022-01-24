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
struct fsnotify_mark {int mask; int ignored_mask; int /*<<< orphan*/  lock; } ;
typedef  int __u32 ;

/* Variables and functions */
 unsigned int FAN_MARK_IGNORED_MASK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static __u32 FUNC2(struct fsnotify_mark *fsn_mark,
					    __u32 mask,
					    unsigned int flags,
					    int *destroy)
{
	__u32 oldmask = 0;

	FUNC0(&fsn_mark->lock);
	if (!(flags & FAN_MARK_IGNORED_MASK)) {
		oldmask = fsn_mark->mask;
		fsn_mark->mask &= ~mask;
	} else {
		fsn_mark->ignored_mask &= ~mask;
	}
	*destroy = !(fsn_mark->mask | fsn_mark->ignored_mask);
	FUNC1(&fsn_mark->lock);

	return mask & oldmask;
}