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
struct dentry {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,struct dentry*,int /*<<< orphan*/ *) ; 
 struct dentry* FUNC1 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,struct dentry*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,struct dentry*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  dump_fops ; 
 int /*<<< orphan*/  error_count ; 
 int /*<<< orphan*/  filter_fops ; 
 int /*<<< orphan*/  global_disable ; 
 int /*<<< orphan*/  min_free_entries ; 
 int /*<<< orphan*/  nr_total_entries ; 
 int /*<<< orphan*/  num_free_entries ; 
 int /*<<< orphan*/  show_all_errors ; 
 int /*<<< orphan*/  show_num_errors ; 

__attribute__((used)) static void FUNC4(void)
{
	struct dentry *dentry = FUNC1("dma-api", NULL);

	FUNC0("disabled", 0444, dentry, &global_disable);
	FUNC3("error_count", 0444, dentry, &error_count);
	FUNC3("all_errors", 0644, dentry, &show_all_errors);
	FUNC3("num_errors", 0644, dentry, &show_num_errors);
	FUNC3("num_free_entries", 0444, dentry, &num_free_entries);
	FUNC3("min_free_entries", 0444, dentry, &min_free_entries);
	FUNC3("nr_total_entries", 0444, dentry, &nr_total_entries);
	FUNC2("driver_filter", 0644, dentry, NULL, &filter_fops);
	FUNC2("dump", 0444, dentry, NULL, &dump_fops);
}