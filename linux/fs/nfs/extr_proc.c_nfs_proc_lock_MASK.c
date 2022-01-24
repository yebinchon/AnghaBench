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
struct inode {int dummy; } ;
struct file_lock {int dummy; } ;
struct file {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  nlm_host; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct inode*) ; 
 struct inode* FUNC1 (struct file*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int,struct file_lock*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC3(struct file *filp, int cmd, struct file_lock *fl)
{
	struct inode *inode = FUNC1(filp);

	return FUNC2(FUNC0(inode)->nlm_host, cmd, fl, NULL);
}