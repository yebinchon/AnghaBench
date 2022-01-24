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
typedef  size_t uint8_t ;
struct xt_match {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 struct xt_match* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct xt_match*) ; 
 scalar_t__ XT_EXTENSION_MAXNAMELEN ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,char const*) ; 
 scalar_t__ FUNC3 (char const*,scalar_t__) ; 
 struct xt_match* FUNC4 (size_t,char const*,size_t) ; 
 int /*<<< orphan*/ * xt_prefix ; 

struct xt_match *
FUNC5(uint8_t nfproto, const char *name, uint8_t revision)
{
	struct xt_match *match;

	if (FUNC3(name, XT_EXTENSION_MAXNAMELEN) == XT_EXTENSION_MAXNAMELEN)
		return FUNC0(-EINVAL);

	match = FUNC4(nfproto, name, revision);
	if (FUNC1(match)) {
		FUNC2("%st_%s", xt_prefix[nfproto], name);
		match = FUNC4(nfproto, name, revision);
	}

	return match;
}