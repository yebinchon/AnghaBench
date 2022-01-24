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
struct seq_file {int /*<<< orphan*/  private; } ;
typedef  scalar_t__ loff_t ;

/* Variables and functions */
 int /*<<< orphan*/  ENODEV ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FORMAT_HEADER ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  event_mutex ; 
 void* FUNC2 (struct seq_file*,void*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void *FUNC4(struct seq_file *m, loff_t *pos)
{
	void *p = (void *)FORMAT_HEADER;
	loff_t l = 0;

	/* ->stop() is called even if ->start() fails */
	FUNC3(&event_mutex);
	if (!FUNC1(m->private))
		return FUNC0(-ENODEV);

	while (l < *pos && p)
		p = FUNC2(m, p, &l);

	return p;
}