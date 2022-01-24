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
struct perf_event {int dummy; } ;
struct file {struct perf_event const* private_data; int /*<<< orphan*/ * f_op; } ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 struct perf_event const* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  perf_fops ; 

const struct perf_event *FUNC1(struct file *file)
{
	if (file->f_op != &perf_fops)
		return FUNC0(-EINVAL);

	return file->private_data;
}