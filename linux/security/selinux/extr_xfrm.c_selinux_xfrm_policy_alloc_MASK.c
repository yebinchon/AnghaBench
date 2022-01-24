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
struct xfrm_user_sec_ctx {int dummy; } ;
struct xfrm_sec_ctx {int dummy; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int FUNC0 (struct xfrm_sec_ctx**,struct xfrm_user_sec_ctx*,int /*<<< orphan*/ ) ; 

int FUNC1(struct xfrm_sec_ctx **ctxp,
			      struct xfrm_user_sec_ctx *uctx,
			      gfp_t gfp)
{
	return FUNC0(ctxp, uctx, gfp);
}