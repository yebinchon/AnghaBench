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
struct sock {int dummy; } ;
struct TYPE_2__ {int cookie; int /*<<< orphan*/  comm; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (struct sock*) ; 
 int FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sock_cookie_ida ; 

__attribute__((used)) static bool FUNC3(struct sock *sk)
{
	int id = FUNC1(sk)->cookie;

	if (!id) {
		id = FUNC2(&sock_cookie_ida, 1, 0, GFP_KERNEL);
		if (id < 0)
			id = 0xffffffff;

		FUNC1(sk)->cookie = id;
		FUNC0(FUNC1(sk)->comm, current);
		return true;
	}

	return false;
}