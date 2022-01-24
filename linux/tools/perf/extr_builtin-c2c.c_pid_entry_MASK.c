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
struct perf_hpp_fmt {int dummy; } ;
struct perf_hpp {int /*<<< orphan*/  size; int /*<<< orphan*/  buf; } ;
struct hist_entry {TYPE_1__* thread; int /*<<< orphan*/  hists; } ;
struct TYPE_2__ {int /*<<< orphan*/  pid_; } ;

/* Variables and functions */
 int FUNC0 (struct perf_hpp_fmt*,struct perf_hpp*,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC2(struct perf_hpp_fmt *fmt, struct perf_hpp *hpp,
	  struct hist_entry *he)
{
	int width = FUNC0(fmt, hpp, he->hists);

	return FUNC1(hpp->buf, hpp->size, "%*d", width, he->thread->pid_);
}