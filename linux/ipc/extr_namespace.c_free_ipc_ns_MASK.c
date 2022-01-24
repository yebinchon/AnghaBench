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
struct ipc_namespace {int /*<<< orphan*/  ns; int /*<<< orphan*/  user_ns; int /*<<< orphan*/  ucounts; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ipc_namespace*) ; 
 int /*<<< orphan*/  FUNC2 (struct ipc_namespace*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ipc_namespace*) ; 
 int /*<<< orphan*/  FUNC6 (struct ipc_namespace*) ; 

__attribute__((used)) static void FUNC7(struct ipc_namespace *ns)
{
	FUNC5(ns);
	FUNC2(ns);
	FUNC6(ns);

	FUNC0(ns->ucounts);
	FUNC4(ns->user_ns);
	FUNC3(&ns->ns);
	FUNC1(ns);
}