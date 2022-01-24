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
struct devlink_dpipe_dump_ctx {int /*<<< orphan*/  hdr; int /*<<< orphan*/  skb; int /*<<< orphan*/  nest; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC2(struct devlink_dpipe_dump_ctx *dump_ctx)
{
	FUNC1(dump_ctx->skb, dump_ctx->nest);
	FUNC0(dump_ctx->skb, dump_ctx->hdr);
	return 0;
}