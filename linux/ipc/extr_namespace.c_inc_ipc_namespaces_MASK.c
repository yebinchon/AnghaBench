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
struct ucounts {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  UCOUNT_IPC_NAMESPACES ; 
 int /*<<< orphan*/  FUNC0 () ; 
 struct ucounts* FUNC1 (struct user_namespace*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct ucounts *FUNC2(struct user_namespace *ns)
{
	return FUNC1(ns, FUNC0(), UCOUNT_IPC_NAMESPACES);
}