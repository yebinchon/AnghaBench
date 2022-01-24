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
struct fib6_nh_excptn_arg {int /*<<< orphan*/  rt; int /*<<< orphan*/  plen; } ;
struct fib6_nh {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct fib6_nh*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC1(struct fib6_nh *nh, void *_arg)
{
	struct fib6_nh_excptn_arg *arg = _arg;
	int err;

	err = FUNC0(nh, arg->plen, arg->rt);
	if (err == 0)
		return 1;

	return 0;
}