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
struct btf_param {scalar_t__ name_off; scalar_t__ type; } ;
typedef  int __u16 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct btf_type*,struct btf_type*) ; 
 struct btf_param* FUNC1 (struct btf_type*) ; 
 int FUNC2 (struct btf_type*) ; 

__attribute__((used)) static bool FUNC3(struct btf_type *t1, struct btf_type *t2)
{
	const struct btf_param *m1, *m2;
	__u16 vlen;
	int i;

	if (!FUNC0(t1, t2))
		return false;

	vlen = FUNC2(t1);
	m1 = FUNC1(t1);
	m2 = FUNC1(t2);
	for (i = 0; i < vlen; i++) {
		if (m1->name_off != m2->name_off || m1->type != m2->type)
			return false;
		m1++;
		m2++;
	}
	return true;
}