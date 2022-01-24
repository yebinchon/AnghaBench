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
struct file {int /*<<< orphan*/  f_cred; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_OPT_NONE ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,struct user_namespace*,int,int /*<<< orphan*/ ) ; 

bool FUNC3(const struct file *file, struct user_namespace *ns,
		     int cap)
{

	if (FUNC0(!FUNC1(cap)))
		return false;

	if (FUNC2(file->f_cred, ns, cap, CAP_OPT_NONE) == 0)
		return true;

	return false;
}