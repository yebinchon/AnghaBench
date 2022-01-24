#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u8 ;
struct sock {int dummy; } ;
struct TYPE_2__ {struct sock** sk; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_SYS_ADMIN ; 
 int ENOENT ; 
 int EPERM ; 
 int /*<<< orphan*/  FUNC0 (struct sock*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 TYPE_1__ pnres ; 
 int /*<<< orphan*/  resource_mutex ; 
 int /*<<< orphan*/  FUNC4 (struct sock*) ; 
 int /*<<< orphan*/  FUNC5 () ; 

int FUNC6(struct sock *sk, u8 res)
{
	int ret = -ENOENT;

	if (!FUNC1(CAP_SYS_ADMIN))
		return -EPERM;

	FUNC2(&resource_mutex);
	if (pnres.sk[res] == sk) {
		FUNC0(pnres.sk[res], NULL);
		ret = 0;
	}
	FUNC3(&resource_mutex);

	if (ret == 0) {
		FUNC5();
		FUNC4(sk);
	}
	return ret;
}