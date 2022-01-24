#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct tep_format_field {int dummy; } ;
struct tep_event {int dummy; } ;
struct pyrf_event {struct evsel* evsel; } ;
struct TYPE_3__ {int /*<<< orphan*/  config; } ;
struct TYPE_4__ {TYPE_1__ attr; } ;
struct evsel {struct tep_event* tp_format; TYPE_2__ core; } ;
typedef  int /*<<< orphan*/  PyObject ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 char* FUNC1 (int /*<<< orphan*/ ) ; 
 struct tep_format_field* FUNC2 (struct tep_event*,char const*) ; 
 struct tep_event* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (struct pyrf_event*,struct tep_format_field*) ; 

__attribute__((used)) static PyObject*
FUNC5(struct pyrf_event *pevent, PyObject *attr_name)
{
	const char *str = FUNC1(FUNC0(attr_name));
	struct evsel *evsel = pevent->evsel;
	struct tep_format_field *field;

	if (!evsel->tp_format) {
		struct tep_event *tp_format;

		tp_format = FUNC3(evsel->core.attr.config);
		if (!tp_format)
			return NULL;

		evsel->tp_format = tp_format;
	}

	field = FUNC2(evsel->tp_format, str);
	if (!field)
		return NULL;

	return FUNC4(pevent, field);
}