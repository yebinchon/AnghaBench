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
struct seq_file {struct kernfs_open_file* private; } ;
struct kernfs_open_file {int /*<<< orphan*/  mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENODEV ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct seq_file*,void*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct seq_file *sf, void *v)
{
	struct kernfs_open_file *of = sf->private;

	if (v != FUNC0(-ENODEV))
		FUNC1(sf, v);
	FUNC2(&of->mutex);
}