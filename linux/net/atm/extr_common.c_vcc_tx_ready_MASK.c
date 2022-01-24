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
struct sock {int /*<<< orphan*/  sk_sndbuf; } ;
struct atm_vcc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct atm_vcc*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (char*,scalar_t__,unsigned int,int /*<<< orphan*/ ) ; 
 struct sock* FUNC2 (struct atm_vcc*) ; 
 scalar_t__ FUNC3 (struct sock*) ; 

__attribute__((used)) static bool FUNC4(struct atm_vcc *vcc, unsigned int size)
{
	struct sock *sk = FUNC2(vcc);

	if (FUNC3(sk) && !FUNC0(vcc, size)) {
		FUNC1("Sorry: wmem_alloc = %d, size = %d, sndbuf = %d\n",
			 FUNC3(sk), size, sk->sk_sndbuf);
		return false;
	}
	return true;
}