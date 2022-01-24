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
struct sock {int dummy; } ;
struct rate_sample {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sock*,struct rate_sample const*) ; 
 int /*<<< orphan*/  FUNC1 (struct sock*,struct rate_sample const*) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*,struct rate_sample const*) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*,struct rate_sample const*) ; 
 int /*<<< orphan*/  FUNC4 (struct sock*,struct rate_sample const*) ; 
 int /*<<< orphan*/  FUNC5 (struct sock*) ; 
 int /*<<< orphan*/  FUNC6 (struct sock*,struct rate_sample const*) ; 

__attribute__((used)) static void FUNC7(struct sock *sk, const struct rate_sample *rs)
{
	FUNC3(sk, rs);
	FUNC2(sk, rs);
	FUNC4(sk, rs);
	FUNC1(sk, rs);
	FUNC0(sk, rs);
	FUNC6(sk, rs);
	FUNC5(sk);
}