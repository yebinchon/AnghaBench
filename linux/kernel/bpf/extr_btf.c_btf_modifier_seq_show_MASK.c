#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct seq_file {int dummy; } ;
struct btf_type {int dummy; } ;
struct btf {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* seq_show ) (struct btf const*,struct btf_type const*,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,struct seq_file*) ;} ;

/* Variables and functions */
 struct btf_type* FUNC0 (struct btf const*,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC1 (struct btf_type const*) ; 
 int /*<<< orphan*/  FUNC2 (struct btf const*,struct btf_type const*,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,struct seq_file*) ; 

__attribute__((used)) static void FUNC3(const struct btf *btf,
				  const struct btf_type *t,
				  u32 type_id, void *data,
				  u8 bits_offset, struct seq_file *m)
{
	t = FUNC0(btf, &type_id);

	FUNC1(t)->seq_show(btf, t, type_id, data, bits_offset, m);
}