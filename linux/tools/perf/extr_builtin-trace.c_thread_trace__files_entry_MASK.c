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
struct TYPE_2__ {int max; struct file* table; } ;
struct thread_trace {TYPE_1__ files; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct file*,int /*<<< orphan*/ ,int) ; 
 struct file* FUNC1 (struct file*,int) ; 

__attribute__((used)) static struct file *FUNC2(struct thread_trace *ttrace, int fd)
{
	if (fd < 0)
		return NULL;

	if (fd > ttrace->files.max) {
		struct file *nfiles = FUNC1(ttrace->files.table, (fd + 1) * sizeof(struct file));

		if (nfiles == NULL)
			return NULL;

		if (ttrace->files.max != -1) {
			FUNC0(nfiles + ttrace->files.max + 1, 0,
			       (fd - ttrace->files.max) * sizeof(struct file));
		} else {
			FUNC0(nfiles, 0, (fd + 1) * sizeof(struct file));
		}

		ttrace->files.table = nfiles;
		ttrace->files.max   = fd;
	}

	return ttrace->files.table + fd;
}