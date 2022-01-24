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
struct parse_events_term {int type_val; int /*<<< orphan*/  err_val; } ;
struct parse_events_error {void* str; int /*<<< orphan*/  idx; } ;

/* Variables and functions */
 int EINVAL ; 
 int PARSE_EVENTS__TERM_TYPE_NUM ; 
 void* FUNC0 (char*) ; 

__attribute__((used)) static int FUNC1(struct parse_events_term *term,
			  struct parse_events_error *err,
			  int type)
{
	if (type == term->type_val)
		return 0;

	if (err) {
		err->idx = term->err_val;
		if (type == PARSE_EVENTS__TERM_TYPE_NUM)
			err->str = FUNC0("expected numeric value");
		else
			err->str = FUNC0("expected string value");
	}
	return -EINVAL;
}