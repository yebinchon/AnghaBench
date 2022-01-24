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
struct TYPE_2__ {struct crush_bucket_tree* items; } ;
struct crush_bucket_tree {struct crush_bucket_tree* node_weights; TYPE_1__ h; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct crush_bucket_tree*) ; 

void FUNC1(struct crush_bucket_tree *b)
{
	FUNC0(b->h.items);
	FUNC0(b->node_weights);
	FUNC0(b);
}