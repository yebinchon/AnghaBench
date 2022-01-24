#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct dentry {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  sample_width; int /*<<< orphan*/  sample_window; } ;

/* Variables and functions */
 int ENOMEM ; 
 scalar_t__ FUNC0 (struct dentry*) ; 
 TYPE_1__ hwlat_data ; 
 void* hwlat_sample_width ; 
 void* hwlat_sample_window ; 
 struct dentry* FUNC1 (char*,struct dentry*) ; 
 void* FUNC2 (char*,int,struct dentry*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct dentry*) ; 
 struct dentry* FUNC4 () ; 
 int /*<<< orphan*/  width_fops ; 
 int /*<<< orphan*/  window_fops ; 

__attribute__((used)) static int FUNC5(void)
{
	struct dentry *d_tracer;
	struct dentry *top_dir;

	d_tracer = FUNC4();
	if (FUNC0(d_tracer))
		return -ENOMEM;

	top_dir = FUNC1("hwlat_detector", d_tracer);
	if (!top_dir)
		return -ENOMEM;

	hwlat_sample_window = FUNC2("window", 0640,
						  top_dir,
						  &hwlat_data.sample_window,
						  &window_fops);
	if (!hwlat_sample_window)
		goto err;

	hwlat_sample_width = FUNC2("width", 0644,
						 top_dir,
						 &hwlat_data.sample_width,
						 &width_fops);
	if (!hwlat_sample_width)
		goto err;

	return 0;

 err:
	FUNC3(top_dir);
	return -ENOMEM;
}