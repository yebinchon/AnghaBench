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
struct in6_addr {int dummy; } ;
struct flowi6 {struct in6_addr daddr; } ;
struct dst_entry {int dummy; } ;

/* Variables and functions */
 struct dst_entry* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct flowi6*) ; 
 int FUNC2 (int /*<<< orphan*/ ,struct sock const*,struct dst_entry**,struct flowi6*) ; 
 int /*<<< orphan*/  FUNC3 (struct sock const*) ; 
 struct dst_entry* FUNC4 (int /*<<< orphan*/ ,struct dst_entry*,int /*<<< orphan*/ ,struct sock const*,int /*<<< orphan*/ ) ; 

struct dst_entry *FUNC5(const struct sock *sk, struct flowi6 *fl6,
				      const struct in6_addr *final_dst)
{
	struct dst_entry *dst = NULL;
	int err;

	err = FUNC2(FUNC3(sk), sk, &dst, fl6);
	if (err)
		return FUNC0(err);
	if (final_dst)
		fl6->daddr = *final_dst;

	return FUNC4(FUNC3(sk), dst, FUNC1(fl6), sk, 0);
}