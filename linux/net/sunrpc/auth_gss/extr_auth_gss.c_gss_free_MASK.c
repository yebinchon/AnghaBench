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
struct gss_auth {struct gss_auth* target_name; int /*<<< orphan*/  net; int /*<<< orphan*/  mech; int /*<<< orphan*/ * gss_pipe; } ;

/* Variables and functions */
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct gss_auth*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(struct gss_auth *gss_auth)
{
	FUNC1(gss_auth->gss_pipe[0]);
	FUNC1(gss_auth->gss_pipe[1]);
	FUNC0(gss_auth->mech);
	FUNC4(gss_auth->net);
	FUNC2(gss_auth->target_name);

	FUNC2(gss_auth);
	FUNC3(THIS_MODULE);
}