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
struct xfrm_user_sec_ctx {scalar_t__ len; scalar_t__ ctx_len; } ;
struct nlattr {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 size_t XFRMA_SEC_CTX ; 
 struct xfrm_user_sec_ctx* FUNC0 (struct nlattr*) ; 

__attribute__((used)) static inline int FUNC1(struct nlattr **attrs)
{
	struct nlattr *rt = attrs[XFRMA_SEC_CTX];
	struct xfrm_user_sec_ctx *uctx;

	if (!rt)
		return 0;

	uctx = FUNC0(rt);
	if (uctx->len != (sizeof(struct xfrm_user_sec_ctx) + uctx->ctx_len))
		return -EINVAL;

	return 0;
}