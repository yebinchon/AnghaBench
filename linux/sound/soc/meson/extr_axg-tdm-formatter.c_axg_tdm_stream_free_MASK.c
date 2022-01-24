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
struct axg_tdm_stream {int /*<<< orphan*/  lock; int /*<<< orphan*/  formatter_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct axg_tdm_stream*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct axg_tdm_stream *ts)
{
	/*
	 * If the list is not empty, it would mean that one of the formatter
	 * widget is still powered and attached to the interface while we
	 * we are removing the TDM DAI. It should not be possible
	 */
	FUNC0(!FUNC2(&ts->formatter_list));
	FUNC3(&ts->lock);
	FUNC1(ts);
}