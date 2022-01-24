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
struct buffer_head {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC1 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC2 (struct buffer_head*) ; 

__attribute__((used)) static void FUNC3(struct buffer_head *bh, int uptodate)
{
	if (uptodate) {
		FUNC1(bh);
	} else {
		/* This happens, due to failed read-ahead attempts. */
		FUNC0(bh);
	}
	FUNC2(bh);
}