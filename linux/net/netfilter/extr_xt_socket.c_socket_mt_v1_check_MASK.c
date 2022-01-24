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
struct xt_socket_mtinfo1 {int flags; } ;
struct xt_mtchk_param {int /*<<< orphan*/  family; int /*<<< orphan*/  net; scalar_t__ matchinfo; } ;

/* Variables and functions */
 int EINVAL ; 
 int XT_SOCKET_FLAGS_V1 ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(const struct xt_mtchk_param *par)
{
	const struct xt_socket_mtinfo1 *info = (struct xt_socket_mtinfo1 *) par->matchinfo;
	int err;

	err = FUNC1(par->net, par->family);
	if (err)
		return err;

	if (info->flags & ~XT_SOCKET_FLAGS_V1) {
		FUNC0("unknown flags 0x%x\n",
				    info->flags & ~XT_SOCKET_FLAGS_V1);
		return -EINVAL;
	}
	return 0;
}