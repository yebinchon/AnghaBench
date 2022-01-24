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

/* Variables and functions */
 int /*<<< orphan*/  filelock_cache ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct file_lock*) ; 
 int /*<<< orphan*/  FUNC1 (struct file_lock*) ; 

void FUNC2(struct file_lock *fl)
{
	FUNC1(fl);
	FUNC0(filelock_cache, fl);
}