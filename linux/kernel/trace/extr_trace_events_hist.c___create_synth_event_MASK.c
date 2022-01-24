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
struct synth_field {int /*<<< orphan*/  devent; } ;
struct synth_event {int /*<<< orphan*/  devent; } ;

/* Variables and functions */
 int EEXIST ; 
 int EINVAL ; 
 scalar_t__ FUNC0 (struct synth_field*) ; 
 int FUNC1 (struct synth_field*) ; 
 int SYNTH_FIELDS_MAX ; 
 struct synth_field* FUNC2 (char const*,int,struct synth_field**) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  event_mutex ; 
 struct synth_field* FUNC4 (char const*) ; 
 int /*<<< orphan*/  FUNC5 (struct synth_field*) ; 
 int /*<<< orphan*/  FUNC6 (struct synth_field*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 struct synth_field* FUNC9 (int,char const**,int*) ; 
 int FUNC10 (struct synth_field*) ; 
 scalar_t__ FUNC11 (char const*,char*) ; 

__attribute__((used)) static int FUNC12(int argc, const char *name, const char **argv)
{
	struct synth_field *field, *fields[SYNTH_FIELDS_MAX];
	struct synth_event *event = NULL;
	int i, consumed = 0, n_fields = 0, ret = 0;

	/*
	 * Argument syntax:
	 *  - Add synthetic event: <event_name> field[;field] ...
	 *  - Remove synthetic event: !<event_name> field[;field] ...
	 *      where 'field' = type field_name
	 */

	if (name[0] == '\0' || argc < 1)
		return -EINVAL;

	FUNC7(&event_mutex);

	event = FUNC4(name);
	if (event) {
		ret = -EEXIST;
		goto out;
	}

	for (i = 0; i < argc - 1; i++) {
		if (FUNC11(argv[i], ";") == 0)
			continue;
		if (n_fields == SYNTH_FIELDS_MAX) {
			ret = -EINVAL;
			goto err;
		}

		field = FUNC9(argc - i, &argv[i], &consumed);
		if (FUNC0(field)) {
			ret = FUNC1(field);
			goto err;
		}
		fields[n_fields++] = field;
		i += consumed - 1;
	}

	if (i < argc && FUNC11(argv[i], ";") != 0) {
		ret = -EINVAL;
		goto err;
	}

	event = FUNC2(name, n_fields, fields);
	if (FUNC0(event)) {
		ret = FUNC1(event);
		event = NULL;
		goto err;
	}
	ret = FUNC10(event);
	if (!ret)
		FUNC3(&event->devent);
	else
		FUNC5(event);
 out:
	FUNC8(&event_mutex);

	return ret;
 err:
	for (i = 0; i < n_fields; i++)
		FUNC6(fields[i]);

	goto out;
}