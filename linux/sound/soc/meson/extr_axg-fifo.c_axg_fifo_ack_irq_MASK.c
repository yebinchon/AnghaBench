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
struct axg_fifo {int /*<<< orphan*/  map; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FIFO_CTRL1 ; 
 int /*<<< orphan*/  FIFO_INT_MASK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct axg_fifo *fifo, u8 mask)
{
	FUNC1(fifo->map, FIFO_CTRL1,
			   FUNC0(FIFO_INT_MASK),
			   FUNC0(mask));

	/* Clear must also be cleared */
	FUNC1(fifo->map, FIFO_CTRL1,
			   FUNC0(FIFO_INT_MASK),
			   0);
}