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
struct tep_format_field {int dummy; } ;
struct perf_sample {int dummy; } ;
struct evsel {int /*<<< orphan*/  needs_swap; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct tep_format_field*,struct perf_sample*,int /*<<< orphan*/ ) ; 
 struct tep_format_field* FUNC1 (struct evsel*,char const*) ; 

u64 FUNC2(struct evsel *evsel, struct perf_sample *sample,
		       const char *name)
{
	struct tep_format_field *field = FUNC1(evsel, name);

	if (!field)
		return 0;

	return field ? FUNC0(field, sample, evsel->needs_swap) : 0;
}