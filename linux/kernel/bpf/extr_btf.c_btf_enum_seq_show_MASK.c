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
typedef  int /*<<< orphan*/  u8 ;
typedef  size_t u32 ;
struct seq_file {int dummy; } ;
struct btf_type {int dummy; } ;
struct btf_enum {int val; int /*<<< orphan*/  name_off; } ;
struct btf {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct btf const*,int /*<<< orphan*/ ) ; 
 struct btf_enum* FUNC1 (struct btf_type const*) ; 
 size_t FUNC2 (struct btf_type const*) ; 
 int /*<<< orphan*/  FUNC3 (struct seq_file*,char*,int) ; 

__attribute__((used)) static void FUNC4(const struct btf *btf, const struct btf_type *t,
			      u32 type_id, void *data, u8 bits_offset,
			      struct seq_file *m)
{
	const struct btf_enum *enums = FUNC1(t);
	u32 i, nr_enums = FUNC2(t);
	int v = *(int *)data;

	for (i = 0; i < nr_enums; i++) {
		if (v == enums[i].val) {
			FUNC3(m, "%s",
				   FUNC0(btf,
							enums[i].name_off));
			return;
		}
	}

	FUNC3(m, "%d", v);
}