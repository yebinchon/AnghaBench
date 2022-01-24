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
struct tp_field {int dummy; } ;
struct tep_format_field {int dummy; } ;
struct evsel {int dummy; } ;

/* Variables and functions */
 struct tep_format_field* FUNC0 (struct evsel*,char const*) ; 
 int FUNC1 (struct tp_field*,struct tep_format_field*) ; 

__attribute__((used)) static int FUNC2(struct evsel *evsel,
					 struct tp_field *field,
					 const char *name)
{
	struct tep_format_field *format_field = FUNC0(evsel, name);

	if (format_field == NULL)
		return -1;

	return FUNC1(field, format_field);
}