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
struct btf_type {int dummy; } ;
struct btf_member {int /*<<< orphan*/  offset; } ;
typedef  int __u32 ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct btf_type const*) ; 
 struct btf_member* FUNC2 (struct btf_type const*) ; 

__attribute__((used)) static inline __u32 FUNC3(const struct btf_type *t,
					     __u32 member_idx)
{
	const struct btf_member *m = FUNC2(t) + member_idx;
	bool kflag = FUNC1(t);

	return kflag ? FUNC0(m->offset) : 0;
}