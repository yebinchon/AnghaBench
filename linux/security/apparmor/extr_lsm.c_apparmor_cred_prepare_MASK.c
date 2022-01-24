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
struct cred {int dummy; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct cred const*) ; 
 int /*<<< orphan*/  FUNC2 (struct cred*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct cred *new, const struct cred *old,
				 gfp_t gfp)
{
	FUNC2(new, FUNC0(FUNC1(old)));
	return 0;
}