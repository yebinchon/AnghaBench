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
struct hist_trigger_data {int dummy; } ;
struct hist_field {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 struct hist_field* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  MAX_FILTER_STR_VAL ; 
 struct hist_field* FUNC1 (struct hist_trigger_data*,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 

__attribute__((used)) static struct hist_field *
FUNC6(struct hist_trigger_data *target_hist_data,
			 char *system, char *event_name, char *field_name)
{
	struct hist_field *event_var;
	char *synthetic_name;

	synthetic_name = FUNC3(MAX_FILTER_STR_VAL, GFP_KERNEL);
	if (!synthetic_name)
		return FUNC0(-ENOMEM);

	FUNC5(synthetic_name, "synthetic_");
	FUNC4(synthetic_name, field_name);

	event_var = FUNC1(target_hist_data, system, event_name, synthetic_name);

	FUNC2(synthetic_name);

	return event_var;
}