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
struct file_lock {int dummy; } ;
struct file {int dummy; } ;
struct fasync_struct {unsigned int fa_fd; } ;

/* Variables and functions */
 int ENOMEM ; 
 scalar_t__ FUNC0 (struct file_lock*) ; 
 int FUNC1 (struct file_lock*) ; 
 struct fasync_struct* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct fasync_struct*) ; 
 struct file_lock* FUNC4 (struct file*,long) ; 
 int /*<<< orphan*/  FUNC5 (struct file_lock*) ; 
 int FUNC6 (struct file*,long,struct file_lock**,void**) ; 

__attribute__((used)) static int FUNC7(unsigned int fd, struct file *filp, long arg)
{
	struct file_lock *fl;
	struct fasync_struct *new;
	int error;

	fl = FUNC4(filp, arg);
	if (FUNC0(fl))
		return FUNC1(fl);

	new = FUNC2();
	if (!new) {
		FUNC5(fl);
		return -ENOMEM;
	}
	new->fa_fd = fd;

	error = FUNC6(filp, arg, &fl, (void **)&new);
	if (fl)
		FUNC5(fl);
	if (new)
		FUNC3(new);
	return error;
}