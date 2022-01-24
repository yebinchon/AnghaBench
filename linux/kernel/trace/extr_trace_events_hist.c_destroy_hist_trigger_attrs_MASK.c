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
struct hist_trigger_attrs {unsigned int n_assignments; unsigned int n_actions; struct hist_trigger_attrs* clock; struct hist_trigger_attrs* vals_str; struct hist_trigger_attrs* keys_str; struct hist_trigger_attrs* sort_key_str; struct hist_trigger_attrs* name; struct hist_trigger_attrs** action_str; struct hist_trigger_attrs** assignment_str; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct hist_trigger_attrs*) ; 

__attribute__((used)) static void FUNC1(struct hist_trigger_attrs *attrs)
{
	unsigned int i;

	if (!attrs)
		return;

	for (i = 0; i < attrs->n_assignments; i++)
		FUNC0(attrs->assignment_str[i]);

	for (i = 0; i < attrs->n_actions; i++)
		FUNC0(attrs->action_str[i]);

	FUNC0(attrs->name);
	FUNC0(attrs->sort_key_str);
	FUNC0(attrs->keys_str);
	FUNC0(attrs->vals_str);
	FUNC0(attrs->clock);
	FUNC0(attrs);
}