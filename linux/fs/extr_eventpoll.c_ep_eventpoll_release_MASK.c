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
struct inode {int dummy; } ;
struct file {struct eventpoll* private_data; } ;
struct eventpoll {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct eventpoll*) ; 

__attribute__((used)) static int FUNC1(struct inode *inode, struct file *file)
{
	struct eventpoll *ep = file->private_data;

	if (ep)
		FUNC0(ep);

	return 0;
}