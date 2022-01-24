#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u64 ;
struct seq_file {int dummy; } ;
struct hist_trigger_data {TYPE_1__* map; } ;
struct event_trigger_data {struct hist_trigger_data* private_data; TYPE_2__* ops; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* print ) (struct seq_file*,TYPE_2__*,struct event_trigger_data*) ;} ;
struct TYPE_3__ {int /*<<< orphan*/  drops; int /*<<< orphan*/  hits; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (struct seq_file*,struct hist_trigger_data*) ; 
 int /*<<< orphan*/  FUNC2 (struct seq_file*,char*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct seq_file*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct seq_file*,TYPE_2__*,struct event_trigger_data*) ; 
 int /*<<< orphan*/  FUNC5 (struct seq_file*,struct hist_trigger_data*) ; 

__attribute__((used)) static void FUNC6(struct seq_file *m,
			      struct event_trigger_data *data, int n)
{
	struct hist_trigger_data *hist_data;
	int n_entries;

	if (n > 0)
		FUNC3(m, "\n\n");

	FUNC3(m, "# event histogram\n#\n# trigger info: ");
	data->ops->print(m, data->ops, data);
	FUNC3(m, "#\n\n");

	hist_data = data->private_data;
	n_entries = FUNC1(m, hist_data);
	if (n_entries < 0)
		n_entries = 0;

	FUNC5(m, hist_data);

	FUNC2(m, "\nTotals:\n    Hits: %llu\n    Entries: %u\n    Dropped: %llu\n",
		   (u64)FUNC0(&hist_data->map->hits),
		   n_entries, (u64)FUNC0(&hist_data->map->drops));
}