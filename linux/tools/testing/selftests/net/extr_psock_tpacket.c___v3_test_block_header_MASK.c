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
struct TYPE_2__ {int block_status; } ;
struct block_desc {TYPE_1__ h1; } ;

/* Variables and functions */
 int TP_STATUS_USER ; 
 int /*<<< orphan*/  FUNC0 (struct block_desc*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int const) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void FUNC3(struct block_desc *pbd, const int block_num)
{
	if ((pbd->h1.block_status & TP_STATUS_USER) == 0) {
		FUNC2(stderr, "\nblock %u: not in TP_STATUS_USER\n", block_num);
		FUNC1(1);
	}

	FUNC0(pbd);
}