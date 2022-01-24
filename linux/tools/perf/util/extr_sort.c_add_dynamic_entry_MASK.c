#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct tep_format_field {int dummy; } ;
struct TYPE_4__ {scalar_t__ type; } ;
struct TYPE_5__ {TYPE_1__ attr; } ;
struct evsel {int /*<<< orphan*/  tp_format; TYPE_2__ core; } ;
struct evlist {int dummy; } ;
struct TYPE_6__ {int raw_trace; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOENT ; 
 int ENOMEM ; 
 scalar_t__ PERF_TYPE_TRACEPOINT ; 
 int FUNC0 (struct evsel*,struct tep_format_field*,int,int) ; 
 int FUNC1 (struct evlist*,int,int) ; 
 int FUNC2 (struct evlist*,char*,int,int) ; 
 int FUNC3 (struct evsel*,int,int) ; 
 struct evsel* FUNC4 (struct evlist*,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 scalar_t__ FUNC6 (char*,char**,char**,char**) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,...) ; 
 scalar_t__ FUNC8 (char*,char*) ; 
 char* FUNC9 (char const*) ; 
 TYPE_3__ symbol_conf ; 
 struct tep_format_field* FUNC10 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC11(struct evlist *evlist, const char *tok,
			     int level)
{
	char *str, *event_name, *field_name, *opt_name;
	struct evsel *evsel;
	struct tep_format_field *field;
	bool raw_trace = symbol_conf.raw_trace;
	int ret = 0;

	if (evlist == NULL)
		return -ENOENT;

	str = FUNC9(tok);
	if (str == NULL)
		return -ENOMEM;

	if (FUNC6(str, &event_name, &field_name, &opt_name) < 0) {
		ret = -EINVAL;
		goto out;
	}

	if (opt_name) {
		if (FUNC8(opt_name, "raw")) {
			FUNC7("unsupported field option %s\n", opt_name);
			ret = -EINVAL;
			goto out;
		}
		raw_trace = true;
	}

	if (!FUNC8(field_name, "trace_fields")) {
		ret = FUNC1(evlist, raw_trace, level);
		goto out;
	}

	if (event_name == NULL) {
		ret = FUNC2(evlist, field_name, raw_trace, level);
		goto out;
	}

	evsel = FUNC4(evlist, event_name);
	if (evsel == NULL) {
		FUNC7("Cannot find event: %s\n", event_name);
		ret = -ENOENT;
		goto out;
	}

	if (evsel->core.attr.type != PERF_TYPE_TRACEPOINT) {
		FUNC7("%s is not a tracepoint event\n", event_name);
		ret = -EINVAL;
		goto out;
	}

	if (!FUNC8(field_name, "*")) {
		ret = FUNC3(evsel, raw_trace, level);
	} else {
		field = FUNC10(evsel->tp_format, field_name);
		if (field == NULL) {
			FUNC7("Cannot find event field for %s.%s\n",
				 event_name, field_name);
			return -ENOENT;
		}

		ret = FUNC0(evsel, field, raw_trace, level);
	}

out:
	FUNC5(str);
	return ret;
}