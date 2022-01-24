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
struct nf_ct_ext_type {size_t id; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  nf_ct_ext_type_mutex ; 
 int /*<<< orphan*/ * nf_ct_ext_types ; 
 int /*<<< orphan*/  FUNC3 () ; 

void FUNC4(const struct nf_ct_ext_type *type)
{
	FUNC1(&nf_ct_ext_type_mutex);
	FUNC0(nf_ct_ext_types[type->id], NULL);
	FUNC2(&nf_ct_ext_type_mutex);
	FUNC3();
}