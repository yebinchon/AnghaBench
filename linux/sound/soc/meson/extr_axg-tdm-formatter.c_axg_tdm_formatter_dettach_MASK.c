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
struct axg_tdm_stream {int /*<<< orphan*/  lock; } ;
struct axg_tdm_formatter {int /*<<< orphan*/  list; struct axg_tdm_stream* stream; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct axg_tdm_formatter*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct axg_tdm_formatter *formatter)
{
	struct axg_tdm_stream *ts = formatter->stream;

	FUNC2(&ts->lock);
	FUNC1(&formatter->list);
	FUNC3(&ts->lock);

	FUNC0(formatter);
}