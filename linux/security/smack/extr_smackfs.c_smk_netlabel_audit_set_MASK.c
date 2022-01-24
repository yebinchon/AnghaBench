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
struct smack_known {int /*<<< orphan*/  smk_secid; } ;
struct netlbl_audit {int /*<<< orphan*/  secid; int /*<<< orphan*/  sessionid; int /*<<< orphan*/  loginuid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  current ; 
 struct smack_known* FUNC2 () ; 

__attribute__((used)) static void FUNC3(struct netlbl_audit *nap)
{
	struct smack_known *skp = FUNC2();

	nap->loginuid = FUNC0(current);
	nap->sessionid = FUNC1(current);
	nap->secid = skp->smk_secid;
}