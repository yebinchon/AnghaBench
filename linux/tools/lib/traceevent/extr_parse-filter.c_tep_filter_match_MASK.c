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
struct tep_record {int dummy; } ;
struct tep_handle {int dummy; } ;
struct tep_filter_type {int /*<<< orphan*/  filter; int /*<<< orphan*/  event; } ;
struct tep_event_filter {int /*<<< orphan*/  filters; struct tep_handle* tep; } ;
typedef  enum tep_errno { ____Placeholder_tep_errno } tep_errno ;

/* Variables and functions */
 int TEP_ERRNO__FILTER_MATCH ; 
 int TEP_ERRNO__FILTER_MISS ; 
 int TEP_ERRNO__FILTER_NOT_FOUND ; 
 int TEP_ERRNO__NO_FILTER ; 
 int /*<<< orphan*/  FUNC0 (struct tep_event_filter*) ; 
 struct tep_filter_type* FUNC1 (struct tep_event_filter*,int) ; 
 int FUNC2 (struct tep_handle*,struct tep_record*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct tep_record*,int*) ; 

enum tep_errno FUNC4(struct tep_event_filter *filter,
				struct tep_record *record)
{
	struct tep_handle *tep = filter->tep;
	struct tep_filter_type *filter_type;
	int event_id;
	int ret;
	enum tep_errno err = 0;

	FUNC0(filter);

	if (!filter->filters)
		return TEP_ERRNO__NO_FILTER;

	event_id = FUNC2(tep, record);

	filter_type = FUNC1(filter, event_id);
	if (!filter_type)
		return TEP_ERRNO__FILTER_NOT_FOUND;

	ret = FUNC3(filter_type->event, filter_type->filter, record, &err);
	if (err)
		return err;

	return ret ? TEP_ERRNO__FILTER_MATCH : TEP_ERRNO__FILTER_MISS;
}