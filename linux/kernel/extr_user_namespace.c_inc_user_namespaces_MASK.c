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
typedef  int /*<<< orphan*/  kuid_t ;

/* Variables and functions */
 int /*<<< orphan*/  UCOUNT_USER_NAMESPACES ; 
 struct ucounts* FUNC0 (struct user_namespace*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct ucounts *FUNC1(struct user_namespace *ns, kuid_t uid)
{
	return FUNC0(ns, uid, UCOUNT_USER_NAMESPACES);
}