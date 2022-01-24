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
struct tep_format_field {int dummy; } ;
struct hpp_dynamic_entry {int raw_trace; int /*<<< orphan*/  hpp; } ;
struct evsel {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct hpp_dynamic_entry* FUNC0 (struct evsel*,struct tep_format_field*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(struct evsel *evsel,
				    struct tep_format_field *field,
				    bool raw_trace, int level)
{
	struct hpp_dynamic_entry *hde;

	hde = FUNC0(evsel, field, level);
	if (hde == NULL)
		return -ENOMEM;

	hde->raw_trace = raw_trace;

	FUNC1(&hde->hpp);
	return 0;
}