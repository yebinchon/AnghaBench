#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {TYPE_1__* node; scalar_t__ node_bit; } ;
struct memory_bitmap {TYPE_2__ cur; } ;
struct TYPE_3__ {int /*<<< orphan*/  data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct memory_bitmap *bm)
{
	int bit;

	bit = FUNC1(bm->cur.node_bit - 1, 0);
	FUNC0(bit, bm->cur.node->data);
}