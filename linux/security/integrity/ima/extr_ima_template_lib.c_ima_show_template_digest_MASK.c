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
struct seq_file {int dummy; } ;
struct ima_field_data {int dummy; } ;
typedef  enum ima_show_type { ____Placeholder_ima_show_type } ima_show_type ;

/* Variables and functions */
 int /*<<< orphan*/  DATA_FMT_DIGEST ; 
 int /*<<< orphan*/  FUNC0 (struct seq_file*,int,int /*<<< orphan*/ ,struct ima_field_data*) ; 

void FUNC1(struct seq_file *m, enum ima_show_type show,
			      struct ima_field_data *field_data)
{
	FUNC0(m, show, DATA_FMT_DIGEST, field_data);
}