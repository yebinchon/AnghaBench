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
struct super_block {scalar_t__ s_fs_info; } ;
struct pid_namespace {scalar_t__ proc_thread_self; scalar_t__ proc_self; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC2 (struct pid_namespace*) ; 

__attribute__((used)) static void FUNC3(struct super_block *sb)
{
	struct pid_namespace *ns;

	ns = (struct pid_namespace *)sb->s_fs_info;
	if (ns->proc_self)
		FUNC0(ns->proc_self);
	if (ns->proc_thread_self)
		FUNC0(ns->proc_thread_self);
	FUNC1(sb);
	FUNC2(ns);
}