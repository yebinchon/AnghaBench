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
struct nft_rule_dump_ctx {struct nft_rule_dump_ctx* chain; struct nft_rule_dump_ctx* table; } ;
struct netlink_callback {struct nft_rule_dump_ctx* data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nft_rule_dump_ctx*) ; 

__attribute__((used)) static int FUNC1(struct netlink_callback *cb)
{
	struct nft_rule_dump_ctx *ctx = cb->data;

	if (ctx) {
		FUNC0(ctx->table);
		FUNC0(ctx->chain);
		FUNC0(ctx);
	}
	return 0;
}