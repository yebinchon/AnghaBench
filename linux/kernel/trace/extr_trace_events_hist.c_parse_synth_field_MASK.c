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
struct synth_field {char* type; int is_string; int /*<<< orphan*/  is_signed; int /*<<< orphan*/  size; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 struct synth_field* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (struct synth_field*) ; 
 int /*<<< orphan*/  FUNC2 (char const*,int,int /*<<< orphan*/ ) ; 
 void* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*) ; 
 char* FUNC5 (char const*,char) ; 
 int /*<<< orphan*/  FUNC6 (char const*,char*) ; 
 int FUNC7 (char const*) ; 
 scalar_t__ FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 

__attribute__((used)) static struct synth_field *FUNC11(int argc, const char **argv,
					     int *consumed)
{
	struct synth_field *field;
	const char *prefix = NULL, *field_type = argv[0], *field_name, *array;
	int len, ret = 0;

	if (field_type[0] == ';')
		field_type++;

	if (!FUNC6(field_type, "unsigned")) {
		if (argc < 3)
			return FUNC0(-EINVAL);
		prefix = "unsigned ";
		field_type = argv[1];
		field_name = argv[2];
		*consumed = 3;
	} else {
		field_name = argv[1];
		*consumed = 2;
	}

	field = FUNC3(sizeof(*field), GFP_KERNEL);
	if (!field)
		return FUNC0(-ENOMEM);

	len = FUNC7(field_name);
	array = FUNC5(field_name, '[');
	if (array)
		len -= FUNC7(array);
	else if (field_name[len - 1] == ';')
		len--;

	field->name = FUNC2(field_name, len, GFP_KERNEL);
	if (!field->name) {
		ret = -ENOMEM;
		goto free;
	}

	if (field_type[0] == ';')
		field_type++;
	len = FUNC7(field_type) + 1;
	if (array)
		len += FUNC7(array);
	if (prefix)
		len += FUNC7(prefix);

	field->type = FUNC3(len, GFP_KERNEL);
	if (!field->type) {
		ret = -ENOMEM;
		goto free;
	}
	if (prefix)
		FUNC4(field->type, prefix);
	FUNC4(field->type, field_type);
	if (array) {
		FUNC4(field->type, array);
		if (field->type[len - 1] == ';')
			field->type[len - 1] = '\0';
	}

	field->size = FUNC10(field->type);
	if (!field->size) {
		ret = -EINVAL;
		goto free;
	}

	if (FUNC8(field->type))
		field->is_string = true;

	field->is_signed = FUNC9(field->type);

 out:
	return field;
 free:
	FUNC1(field);
	field = FUNC0(ret);
	goto out;
}