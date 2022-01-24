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
struct list_head {int dummy; } ;
struct file_lock {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int F_UNLCK ; 
 int FUNC1 (struct file_lock*,int,struct list_head*) ; 

__attribute__((used)) static int
FUNC2(struct file_lock *onlist, int arg,
		struct list_head *dispose)
{
	FUNC0(!(arg & F_UNLCK));
	return FUNC1(onlist, arg, dispose);
}