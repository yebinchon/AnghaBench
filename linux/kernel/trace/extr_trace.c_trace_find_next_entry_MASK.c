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
typedef  int /*<<< orphan*/  u64 ;
struct trace_iterator {int dummy; } ;
struct trace_entry {int dummy; } ;

/* Variables and functions */
 struct trace_entry* FUNC0 (struct trace_iterator*,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

struct trace_entry *FUNC1(struct trace_iterator *iter,
					  int *ent_cpu, u64 *ent_ts)
{
	return FUNC0(iter, ent_cpu, NULL, ent_ts);
}