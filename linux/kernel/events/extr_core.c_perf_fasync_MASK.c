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
struct perf_event {int /*<<< orphan*/  fasync; } ;
struct inode {int dummy; } ;
struct file {struct perf_event* private_data; } ;

/* Variables and functions */
 int FUNC0 (int,struct file*,int,int /*<<< orphan*/ *) ; 
 struct inode* FUNC1 (struct file*) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*) ; 

__attribute__((used)) static int FUNC4(int fd, struct file *filp, int on)
{
	struct inode *inode = FUNC1(filp);
	struct perf_event *event = filp->private_data;
	int retval;

	FUNC2(inode);
	retval = FUNC0(fd, filp, on, &event->fasync);
	FUNC3(inode);

	if (retval < 0)
		return retval;

	return 0;
}