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
struct btf {size_t nr_types; struct btf_type** types; } ;
struct bpf_object {int dummy; } ;
typedef  size_t __u32 ;

/* Variables and functions */
 int FUNC0 (struct bpf_object*,struct btf*,struct btf_type*) ; 
 scalar_t__ FUNC1 (struct btf_type*) ; 

int FUNC2(struct bpf_object *obj, struct btf *btf)
{
	int err = 0;
	__u32 i;

	for (i = 1; i <= btf->nr_types; i++) {
		struct btf_type *t = btf->types[i];

		/* Loader needs to fix up some of the things compiler
		 * couldn't get its hands on while emitting BTF. This
		 * is section size and global variable offset. We use
		 * the info from the ELF itself for this purpose.
		 */
		if (FUNC1(t)) {
			err = FUNC0(obj, btf, t);
			if (err)
				break;
		}
	}

	return err;
}