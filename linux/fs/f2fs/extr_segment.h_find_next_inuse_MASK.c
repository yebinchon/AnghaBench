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
struct free_segmap_info {int /*<<< orphan*/  segmap_lock; int /*<<< orphan*/  free_segmap; } ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ ,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline unsigned int FUNC3(struct free_segmap_info *free_i,
		unsigned int max, unsigned int segno)
{
	unsigned int ret;
	FUNC1(&free_i->segmap_lock);
	ret = FUNC0(free_i->free_segmap, max, segno);
	FUNC2(&free_i->segmap_lock);
	return ret;
}