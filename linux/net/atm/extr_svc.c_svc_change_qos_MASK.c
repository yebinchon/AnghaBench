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
struct sock {int sk_err; } ;
struct atm_vcc {int /*<<< orphan*/  flags; int /*<<< orphan*/  local; } ;
struct atm_qos {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATM_VF_RELEASED ; 
 int /*<<< orphan*/  ATM_VF_WAITING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int EUNATCH ; 
 int /*<<< orphan*/  TASK_UNINTERRUPTIBLE ; 
 int /*<<< orphan*/  as_modify ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  sigd ; 
 int /*<<< orphan*/  FUNC5 (struct atm_vcc*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct atm_qos*,int /*<<< orphan*/ ) ; 
 struct sock* FUNC6 (struct atm_vcc*) ; 
 int /*<<< orphan*/  FUNC7 (struct sock*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  wait ; 

int FUNC9(struct atm_vcc *vcc, struct atm_qos *qos)
{
	struct sock *sk = FUNC6(vcc);
	FUNC0(wait);

	FUNC4(ATM_VF_WAITING, &vcc->flags);
	FUNC5(vcc, as_modify, NULL, NULL, &vcc->local, qos, 0);
	for (;;) {
		FUNC2(FUNC7(sk), &wait, TASK_UNINTERRUPTIBLE);
		if (!FUNC8(ATM_VF_WAITING, &vcc->flags) ||
		    FUNC8(ATM_VF_RELEASED, &vcc->flags) || !sigd) {
			break;
		}
		FUNC3();
	}
	FUNC1(FUNC7(sk), &wait);
	if (!sigd)
		return -EUNATCH;
	return -sk->sk_err;
}