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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct file*) ; 
 int FUNC1 (int /*<<< orphan*/ ,struct file_lock*,struct file_lock*) ; 

int FUNC2(struct file *filp, struct file_lock *fl,
			struct file_lock *conflock)
{
	return FUNC1(FUNC0(filp), fl, conflock);
}