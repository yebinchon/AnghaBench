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
struct quad_buffer_head {scalar_t__ data; TYPE_1__** bh; } ;
struct TYPE_2__ {scalar_t__ b_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,scalar_t__,int) ; 
 scalar_t__ FUNC2 (int) ; 

void FUNC3(struct quad_buffer_head *qbh)
{
	if (FUNC2(qbh->data != qbh->bh[0]->b_data)) {
		FUNC1(qbh->bh[0]->b_data, qbh->data + 0 * 512, 512);
		FUNC1(qbh->bh[1]->b_data, qbh->data + 1 * 512, 512);
		FUNC1(qbh->bh[2]->b_data, qbh->data + 2 * 512, 512);
		FUNC1(qbh->bh[3]->b_data, qbh->data + 3 * 512, 512);
	}
	FUNC0(qbh->bh[0]);
	FUNC0(qbh->bh[1]);
	FUNC0(qbh->bh[2]);
	FUNC0(qbh->bh[3]);
}