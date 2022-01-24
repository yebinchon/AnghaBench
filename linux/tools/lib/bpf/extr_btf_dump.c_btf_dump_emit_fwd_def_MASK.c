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
struct btf_dump {int dummy; } ;
typedef  int /*<<< orphan*/  __u32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct btf_dump*,char*,char const*) ; 
 char* FUNC1 (struct btf_dump*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct btf_type const*) ; 

__attribute__((used)) static void FUNC3(struct btf_dump *d, __u32 id,
				  const struct btf_type *t)
{
	const char *name = FUNC1(d, id);

	if (FUNC2(t))
		FUNC0(d, "union %s", name);
	else
		FUNC0(d, "struct %s", name);
}