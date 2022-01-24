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

/* Variables and functions */
 scalar_t__ BTF_KIND_ENUM ; 
 scalar_t__ FUNC0 (struct btf_type const*) ; 

__attribute__((used)) static inline bool FUNC1(const struct btf_type *t)
{
	return FUNC0(t) == BTF_KIND_ENUM;
}