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
struct btf_header {int type_off; int str_off; } ;
struct btf {void* nohdr_data; struct btf_header* hdr; } ;

/* Variables and functions */
 int FUNC0 (struct btf*,struct btf_type*) ; 
 int FUNC1 (struct btf_type*) ; 

__attribute__((used)) static int FUNC2(struct btf *btf)
{
	struct btf_header *hdr = btf->hdr;
	void *nohdr_data = btf->nohdr_data;
	void *next_type = nohdr_data + hdr->type_off;
	void *end_type = nohdr_data + hdr->str_off;

	while (next_type < end_type) {
		struct btf_type *t = next_type;
		int type_size;
		int err;

		type_size = FUNC1(t);
		if (type_size < 0)
			return type_size;
		next_type += type_size;
		err = FUNC0(btf, t);
		if (err)
			return err;
	}

	return 0;
}