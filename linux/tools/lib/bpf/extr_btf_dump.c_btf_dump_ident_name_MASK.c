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
struct btf_dump {int /*<<< orphan*/  ident_names; } ;
typedef  int /*<<< orphan*/  __u32 ;

/* Variables and functions */
 char const* FUNC0 (struct btf_dump*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static const char *FUNC1(struct btf_dump *d, __u32 id)
{
	return FUNC0(d, id, d->ident_names);
}