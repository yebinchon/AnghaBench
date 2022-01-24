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
struct btf {int /*<<< orphan*/  data; int /*<<< orphan*/  resolved_ids; int /*<<< orphan*/  resolved_sizes; int /*<<< orphan*/  types; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct btf*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct btf *btf)
{
	FUNC1(btf->types);
	FUNC1(btf->resolved_sizes);
	FUNC1(btf->resolved_ids);
	FUNC1(btf->data);
	FUNC0(btf);
}