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
struct file {int dummy; } ;
struct fasync_struct {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct fasync_struct* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct fasync_struct*) ; 
 scalar_t__ FUNC2 (int,struct file*,struct fasync_struct**,struct fasync_struct*) ; 

__attribute__((used)) static int FUNC3(int fd, struct file *filp, struct fasync_struct **fapp)
{
	struct fasync_struct *new;

	new = FUNC0();
	if (!new)
		return -ENOMEM;

	/*
	 * fasync_insert_entry() returns the old (update) entry if
	 * it existed.
	 *
	 * So free the (unused) new entry and return 0 to let the
	 * caller know that we didn't add any new fasync entries.
	 */
	if (FUNC2(fd, filp, fapp, new)) {
		FUNC1(new);
		return 0;
	}

	return 1;
}