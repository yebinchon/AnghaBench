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
typedef  size_t u32 ;
struct btf_type {int dummy; } ;
struct btf {size_t* resolved_ids; } ;

/* Variables and functions */
 struct btf_type const* FUNC0 (struct btf const*,size_t) ; 

__attribute__((used)) static const struct btf_type *FUNC1(const struct btf *btf,
						  u32 *type_id)
{
	*type_id = btf->resolved_ids[*type_id];
	return FUNC0(btf, *type_id);
}