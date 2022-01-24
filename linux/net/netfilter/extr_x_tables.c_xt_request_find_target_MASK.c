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
typedef  size_t u8 ;
struct xt_target {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 struct xt_target* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct xt_target*) ; 
 scalar_t__ XT_EXTENSION_MAXNAMELEN ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,char const*) ; 
 scalar_t__ FUNC3 (char const*,scalar_t__) ; 
 struct xt_target* FUNC4 (size_t,char const*,size_t) ; 
 int /*<<< orphan*/ * xt_prefix ; 

struct xt_target *FUNC5(u8 af, const char *name, u8 revision)
{
	struct xt_target *target;

	if (FUNC3(name, XT_EXTENSION_MAXNAMELEN) == XT_EXTENSION_MAXNAMELEN)
		return FUNC0(-EINVAL);

	target = FUNC4(af, name, revision);
	if (FUNC1(target)) {
		FUNC2("%st_%s", xt_prefix[af], name);
		target = FUNC4(af, name, revision);
	}

	return target;
}