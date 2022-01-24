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
struct hist_elt_data {struct hist_elt_data* comm; struct hist_elt_data** field_var_str; } ;

/* Variables and functions */
 unsigned int SYNTH_FIELDS_MAX ; 
 int /*<<< orphan*/  FUNC0 (struct hist_elt_data*) ; 

__attribute__((used)) static void FUNC1(struct hist_elt_data *elt_data)
{
	unsigned int i;

	for (i = 0; i < SYNTH_FIELDS_MAX; i++)
		FUNC0(elt_data->field_var_str[i]);

	FUNC0(elt_data->comm);
	FUNC0(elt_data);
}