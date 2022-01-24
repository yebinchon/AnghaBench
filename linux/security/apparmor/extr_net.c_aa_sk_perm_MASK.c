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
typedef  int /*<<< orphan*/  u32 ;
struct sock {int dummy; } ;
struct aa_label {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct aa_label*,char const*,int /*<<< orphan*/ ,struct sock*) ; 
 struct aa_label* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct aa_label*) ; 
 int FUNC4 () ; 

int FUNC5(const char *op, u32 request, struct sock *sk)
{
	struct aa_label *label;
	int error;

	FUNC0(!sk);
	FUNC0(FUNC4());

	/* TODO: switch to begin_current_label ???? */
	label = FUNC2();
	error = FUNC1(label, op, request, sk);
	FUNC3(label);

	return error;
}