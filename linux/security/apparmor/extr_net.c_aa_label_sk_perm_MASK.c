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
struct aa_profile {int dummy; } ;
struct aa_label {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char const*,struct sock*) ; 
 int /*<<< orphan*/  FUNC2 (struct aa_profile*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct sock*) ; 
 int FUNC3 (struct aa_label*,struct aa_profile*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sa ; 
 int /*<<< orphan*/  FUNC4 (struct aa_label*) ; 

__attribute__((used)) static int FUNC5(struct aa_label *label, const char *op, u32 request,
			    struct sock *sk)
{
	int error = 0;

	FUNC0(!label);
	FUNC0(!sk);

	if (!FUNC4(label)) {
		struct aa_profile *profile;
		FUNC1(sa, op, sk);

		error = FUNC3(label, profile,
			    FUNC2(profile, &sa, request, sk));
	}

	return error;
}