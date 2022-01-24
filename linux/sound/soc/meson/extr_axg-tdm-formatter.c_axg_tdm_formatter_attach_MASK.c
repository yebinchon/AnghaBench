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
struct axg_tdm_stream {int /*<<< orphan*/  lock; int /*<<< orphan*/  formatter_list; scalar_t__ ready; } ;
struct axg_tdm_formatter {int /*<<< orphan*/  list; struct axg_tdm_stream* stream; } ;

/* Variables and functions */
 int FUNC0 (struct axg_tdm_formatter*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

__attribute__((used)) static int FUNC5(struct axg_tdm_formatter *formatter)
{
	struct axg_tdm_stream *ts = formatter->stream;
	int ret = 0;

	FUNC2(&ts->lock);

	/* Catch up if the stream is already running when we attach */
	if (ts->ready) {
		ret = FUNC0(formatter);
		if (ret) {
			FUNC4("failed to enable formatter\n");
			goto out;
		}
	}

	FUNC1(&formatter->list, &ts->formatter_list);
out:
	FUNC3(&ts->lock);
	return ret;
}