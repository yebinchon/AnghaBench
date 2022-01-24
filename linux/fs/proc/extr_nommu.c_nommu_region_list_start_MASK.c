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
typedef  void rb_node ;
typedef  int /*<<< orphan*/  loff_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  nommu_region_sem ; 
 int /*<<< orphan*/  nommu_region_tree ; 
 void* FUNC1 (int /*<<< orphan*/ *) ; 
 void* FUNC2 (void*) ; 

__attribute__((used)) static void *FUNC3(struct seq_file *m, loff_t *_pos)
{
	struct rb_node *p;
	loff_t pos = *_pos;

	FUNC0(&nommu_region_sem);

	for (p = FUNC1(&nommu_region_tree); p; p = FUNC2(p))
		if (pos-- == 0)
			return p;
	return NULL;
}