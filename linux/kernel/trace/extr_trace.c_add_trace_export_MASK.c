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
struct trace_export {struct trace_export* next; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct trace_export*,struct trace_export*) ; 

__attribute__((used)) static inline void
FUNC1(struct trace_export **list, struct trace_export *export)
{
	FUNC0(export->next, *list);
	/*
	 * We are entering export into the list but another
	 * CPU might be walking that list. We need to make sure
	 * the export->next pointer is valid before another CPU sees
	 * the export pointer included into the list.
	 */
	FUNC0(*list, export);
}