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
struct trace_array {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct trace_array*,char const*,char const*,char const*,int) ; 
 int /*<<< orphan*/  event_mutex ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct trace_array *tr, const char *match,
				  const char *sub, const char *event, int set)
{
	int ret;

	FUNC1(&event_mutex);
	ret = FUNC0(tr, match, sub, event, set);
	FUNC2(&event_mutex);

	return ret;
}