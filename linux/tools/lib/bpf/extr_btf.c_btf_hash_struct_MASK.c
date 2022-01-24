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
struct btf_member {int /*<<< orphan*/  offset; int /*<<< orphan*/  name_off; } ;
typedef  int __u32 ;

/* Variables and functions */
 long FUNC0 (struct btf_type*) ; 
 struct btf_member* FUNC1 (struct btf_type*) ; 
 int FUNC2 (struct btf_type*) ; 
 long FUNC3 (long,int /*<<< orphan*/ ) ; 

__attribute__((used)) static long FUNC4(struct btf_type *t)
{
	const struct btf_member *member = FUNC1(t);
	__u32 vlen = FUNC2(t);
	long h = FUNC0(t);
	int i;

	for (i = 0; i < vlen; i++) {
		h = FUNC3(h, member->name_off);
		h = FUNC3(h, member->offset);
		/* no hashing of referenced type ID, it can be unresolved yet */
		member++;
	}
	return h;
}