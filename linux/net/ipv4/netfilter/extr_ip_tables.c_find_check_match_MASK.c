#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct xt_mtchk_param {int dummy; } ;
struct xt_match {int /*<<< orphan*/  me; } ;
struct TYPE_5__ {struct xt_match* match; } ;
struct TYPE_4__ {int /*<<< orphan*/  revision; int /*<<< orphan*/  name; } ;
struct TYPE_6__ {TYPE_2__ kernel; TYPE_1__ user; } ;
struct xt_entry_match {TYPE_3__ u; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct xt_match*) ; 
 int /*<<< orphan*/  NFPROTO_IPV4 ; 
 int FUNC1 (struct xt_match*) ; 
 int FUNC2 (struct xt_entry_match*,struct xt_mtchk_param*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct xt_match* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(struct xt_entry_match *m, struct xt_mtchk_param *par)
{
	struct xt_match *match;
	int ret;

	match = FUNC4(NFPROTO_IPV4, m->u.user.name,
				      m->u.user.revision);
	if (FUNC0(match))
		return FUNC1(match);
	m->u.kernel.match = match;

	ret = FUNC2(m, par);
	if (ret)
		goto err;

	return 0;
err:
	FUNC3(m->u.kernel.match->me);
	return ret;
}