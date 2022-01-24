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
struct hist_trigger_data {unsigned int n_field_vars; int /*<<< orphan*/ * field_vars; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(struct hist_trigger_data *hist_data)
{
	unsigned int i;

	for (i = 0; i < hist_data->n_field_vars; i++)
		FUNC0(hist_data->field_vars[i]);
}