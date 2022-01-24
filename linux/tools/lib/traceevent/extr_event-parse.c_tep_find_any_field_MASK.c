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
struct tep_format_field {int dummy; } ;
struct tep_event {int dummy; } ;

/* Variables and functions */
 struct tep_format_field* FUNC0 (struct tep_event*,char const*) ; 
 struct tep_format_field* FUNC1 (struct tep_event*,char const*) ; 

struct tep_format_field *
FUNC2(struct tep_event *event, const char *name)
{
	struct tep_format_field *format;

	format = FUNC0(event, name);
	if (format)
		return format;
	return FUNC1(event, name);
}