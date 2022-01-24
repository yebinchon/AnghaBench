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
struct btf_type {int /*<<< orphan*/  info; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ BTF_KIND_DATASEC ; 

__attribute__((used)) static bool FUNC1(const struct btf_type *t)
{
	return FUNC0(t->info) == BTF_KIND_DATASEC;
}