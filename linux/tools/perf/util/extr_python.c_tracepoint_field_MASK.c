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
struct tep_handle {int dummy; } ;
struct tep_format_field {int flags; unsigned int offset; unsigned int size; TYPE_1__* event; } ;
struct TYPE_4__ {void* raw_data; } ;
struct pyrf_event {TYPE_2__ sample; } ;
struct TYPE_3__ {struct tep_handle* tep; } ;
typedef  int /*<<< orphan*/  PyObject ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (char const*,unsigned int) ; 
 int /*<<< orphan*/ * FUNC1 (long) ; 
 int /*<<< orphan*/ * FUNC2 (unsigned long) ; 
 int TEP_FIELD_IS_ARRAY ; 
 int TEP_FIELD_IS_DYNAMIC ; 
 int TEP_FIELD_IS_POINTER ; 
 int TEP_FIELD_IS_SIGNED ; 
 int TEP_FIELD_IS_STRING ; 
 int /*<<< orphan*/ * FUNC3 (char*) ; 
 scalar_t__ FUNC4 (void*,unsigned int) ; 
 unsigned long long FUNC5 (struct tep_handle*,void*,unsigned int) ; 

__attribute__((used)) static PyObject*
FUNC6(struct pyrf_event *pe, struct tep_format_field *field)
{
	struct tep_handle *pevent = field->event->tep;
	void *data = pe->sample.raw_data;
	PyObject *ret = NULL;
	unsigned long long val;
	unsigned int offset, len;

	if (field->flags & TEP_FIELD_IS_ARRAY) {
		offset = field->offset;
		len    = field->size;
		if (field->flags & TEP_FIELD_IS_DYNAMIC) {
			val     = FUNC5(pevent, data + offset, len);
			offset  = val;
			len     = offset >> 16;
			offset &= 0xffff;
		}
		if (field->flags & TEP_FIELD_IS_STRING &&
		    FUNC4(data + offset, len)) {
			ret = FUNC3((char *)data + offset);
		} else {
			ret = FUNC0((const char *) data + offset, len);
			field->flags &= ~TEP_FIELD_IS_STRING;
		}
	} else {
		val = FUNC5(pevent, data + field->offset,
				      field->size);
		if (field->flags & TEP_FIELD_IS_POINTER)
			ret = FUNC2((unsigned long) val);
		else if (field->flags & TEP_FIELD_IS_SIGNED)
			ret = FUNC1((long) val);
		else
			ret = FUNC2((unsigned long) val);
	}

	return ret;
}