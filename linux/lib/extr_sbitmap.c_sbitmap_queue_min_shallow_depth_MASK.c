#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  depth; } ;
struct sbitmap_queue {unsigned int min_shallow_depth; TYPE_1__ sb; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sbitmap_queue*,int /*<<< orphan*/ ) ; 

void FUNC1(struct sbitmap_queue *sbq,
				     unsigned int min_shallow_depth)
{
	sbq->min_shallow_depth = min_shallow_depth;
	FUNC0(sbq, sbq->sb.depth);
}