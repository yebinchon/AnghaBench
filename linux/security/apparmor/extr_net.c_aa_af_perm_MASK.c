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
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct aa_profile {int dummy; } ;
struct aa_label {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct aa_profile*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct aa_label*,struct aa_profile*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sa ; 

int FUNC3(struct aa_label *label, const char *op, u32 request, u16 family,
	       int type, int protocol)
{
	struct aa_profile *profile;
	FUNC0(sa, op, NULL, family, type, protocol);

	return FUNC2(label, profile,
			FUNC1(profile, &sa, request, family,
					   type));
}