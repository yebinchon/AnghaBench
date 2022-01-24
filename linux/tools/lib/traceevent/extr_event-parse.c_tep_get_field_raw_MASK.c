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
struct trace_seq {int dummy; } ;
struct tep_record {void* data; } ;
struct tep_format_field {unsigned int offset; int flags; int size; } ;
struct tep_event {int /*<<< orphan*/  tep; } ;

/* Variables and functions */
 int TEP_FIELD_IS_DYNAMIC ; 
 struct tep_format_field* FUNC0 (struct tep_event*,char const*) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ,void*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct trace_seq*,char*,char const*) ; 

void *FUNC3(struct trace_seq *s, struct tep_event *event,
			const char *name, struct tep_record *record,
			int *len, int err)
{
	struct tep_format_field *field;
	void *data = record->data;
	unsigned offset;
	int dummy;

	if (!event)
		return NULL;

	field = FUNC0(event, name);

	if (!field) {
		if (err)
			FUNC2(s, "<CANT FIND FIELD %s>", name);
		return NULL;
	}

	/* Allow @len to be NULL */
	if (!len)
		len = &dummy;

	offset = field->offset;
	if (field->flags & TEP_FIELD_IS_DYNAMIC) {
		offset = FUNC1(event->tep,
					 data + offset, field->size);
		*len = offset >> 16;
		offset &= 0xffff;
	} else
		*len = field->size;

	return data + offset;
}