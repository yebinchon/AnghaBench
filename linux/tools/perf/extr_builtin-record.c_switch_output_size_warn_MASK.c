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
typedef  int u64 ;
struct switch_output {int size; } ;
struct TYPE_2__ {int /*<<< orphan*/  mmap_pages; } ;
struct record {struct switch_output switch_output; TYPE_1__ opts; } ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int) ; 

__attribute__((used)) static void FUNC3(struct record *rec)
{
	u64 wakeup_size = FUNC0(rec->opts.mmap_pages);
	struct switch_output *s = &rec->switch_output;

	wakeup_size /= 2;

	if (s->size < wakeup_size) {
		char buf[100];

		FUNC2(buf, sizeof(buf), wakeup_size);
		FUNC1("WARNING: switch-output data size lower than "
			   "wakeup kernel buffer size (%s) "
			   "expect bigger perf.data sizes\n", buf);
	}
}