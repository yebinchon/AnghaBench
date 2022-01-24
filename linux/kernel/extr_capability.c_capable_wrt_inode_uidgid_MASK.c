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
struct user_namespace {int dummy; } ;
struct inode {int dummy; } ;

/* Variables and functions */
 struct user_namespace* FUNC0 () ; 
 scalar_t__ FUNC1 (struct user_namespace*,int) ; 
 scalar_t__ FUNC2 (struct user_namespace*,struct inode const*) ; 

bool FUNC3(const struct inode *inode, int cap)
{
	struct user_namespace *ns = FUNC0();

	return FUNC1(ns, cap) && FUNC2(ns, inode);
}