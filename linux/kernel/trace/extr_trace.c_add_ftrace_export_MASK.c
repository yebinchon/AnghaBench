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
struct trace_export {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct trace_export**,struct trace_export*) ; 
 int /*<<< orphan*/  FUNC1 () ; 

__attribute__((used)) static inline void
FUNC2(struct trace_export **list, struct trace_export *export)
{
	if (*list == NULL)
		FUNC1();

	FUNC0(list, export);
}