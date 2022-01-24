#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct tep_format_field {char* name; unsigned long flags; char* alias; unsigned int offset; unsigned int size; unsigned int arraylen; TYPE_1__* event; } ;
struct perf_sample {void* raw_data; } ;
struct ctf_writer {int dummy; } ;
struct bt_ctf_field_type {int dummy; } ;
struct bt_ctf_field {int dummy; } ;
struct bt_ctf_event_class {int dummy; } ;
struct bt_ctf_event {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  tep; } ;

/* Variables and functions */
 unsigned long TEP_FIELD_IS_ARRAY ; 
 unsigned long TEP_FIELD_IS_DYNAMIC ; 
 unsigned long TEP_FIELD_IS_SIGNED ; 
 unsigned long TEP_FIELD_IS_STRING ; 
 int /*<<< orphan*/  FUNC0 (unsigned long long,unsigned int) ; 
 struct bt_ctf_field_type* FUNC1 (struct bt_ctf_event_class*,char const*) ; 
 int FUNC2 (struct bt_ctf_event*,char const*,struct bt_ctf_field*) ; 
 struct bt_ctf_field* FUNC3 (struct bt_ctf_field*,unsigned int) ; 
 struct bt_ctf_field* FUNC4 (struct bt_ctf_field_type*) ; 
 int /*<<< orphan*/  FUNC5 (struct bt_ctf_field*) ; 
 int FUNC6 (struct bt_ctf_field*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct bt_ctf_field_type*) ; 
 int FUNC8 (struct bt_ctf_field*,unsigned long long) ; 
 struct bt_ctf_field_type* FUNC9 (struct ctf_writer*,struct tep_format_field*) ; 
 int /*<<< orphan*/  FUNC10 (char*,char const*) ; 
 int FUNC11 (struct bt_ctf_field*,void*) ; 
 unsigned long long FUNC12 (int /*<<< orphan*/ ,void*,unsigned int) ; 

__attribute__((used)) static int FUNC13(struct ctf_writer *cw,
				      struct bt_ctf_event_class *event_class,
				      struct bt_ctf_event *event,
				      struct perf_sample *sample,
				      struct tep_format_field *fmtf)
{
	struct bt_ctf_field_type *type;
	struct bt_ctf_field *array_field;
	struct bt_ctf_field *field;
	const char *name = fmtf->name;
	void *data = sample->raw_data;
	unsigned long flags = fmtf->flags;
	unsigned int n_items;
	unsigned int i;
	unsigned int offset;
	unsigned int len;
	int ret;

	name = fmtf->alias;
	offset = fmtf->offset;
	len = fmtf->size;
	if (flags & TEP_FIELD_IS_STRING)
		flags &= ~TEP_FIELD_IS_ARRAY;

	if (flags & TEP_FIELD_IS_DYNAMIC) {
		unsigned long long tmp_val;

		tmp_val = FUNC12(fmtf->event->tep,
					  data + offset, len);
		offset = tmp_val;
		len = offset >> 16;
		offset &= 0xffff;
	}

	if (flags & TEP_FIELD_IS_ARRAY) {

		type = FUNC1(
				event_class, name);
		array_field = FUNC4(type);
		FUNC7(type);
		if (!array_field) {
			FUNC10("Failed to create array type %s\n", name);
			return -1;
		}

		len = fmtf->size / fmtf->arraylen;
		n_items = fmtf->arraylen;
	} else {
		n_items = 1;
		array_field = NULL;
	}

	type = FUNC9(cw, fmtf);

	for (i = 0; i < n_items; i++) {
		if (flags & TEP_FIELD_IS_ARRAY)
			field = FUNC3(array_field, i);
		else
			field = FUNC4(type);

		if (!field) {
			FUNC10("failed to create a field %s\n", name);
			return -1;
		}

		if (flags & TEP_FIELD_IS_STRING)
			ret = FUNC11(field, data + offset + i * len);
		else {
			unsigned long long value_int;

			value_int = FUNC12(
					fmtf->event->tep,
					data + offset + i * len, len);

			if (!(flags & TEP_FIELD_IS_SIGNED))
				ret = FUNC8(
						field, value_int);
			else
				ret = FUNC6(
						field, FUNC0(value_int, len));
		}

		if (ret) {
			FUNC10("failed to set file value %s\n", name);
			goto err_put_field;
		}
		if (!(flags & TEP_FIELD_IS_ARRAY)) {
			ret = FUNC2(event, name, field);
			if (ret) {
				FUNC10("failed to set payload %s\n", name);
				goto err_put_field;
			}
		}
		FUNC5(field);
	}
	if (flags & TEP_FIELD_IS_ARRAY) {
		ret = FUNC2(event, name, array_field);
		if (ret) {
			FUNC10("Failed add payload array %s\n", name);
			return -1;
		}
		FUNC5(array_field);
	}
	return 0;

err_put_field:
	FUNC5(field);
	return -1;
}