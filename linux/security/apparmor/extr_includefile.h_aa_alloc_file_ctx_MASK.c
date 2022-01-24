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
struct aa_label {int dummy; } ;
struct aa_file_ctx {int /*<<< orphan*/  label; int /*<<< orphan*/  lock; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct aa_label*) ; 
 struct aa_file_ctx* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline struct aa_file_ctx *FUNC4(struct aa_label *label,
						    gfp_t gfp)
{
	struct aa_file_ctx *ctx;

	ctx = FUNC1(sizeof(struct aa_file_ctx), gfp);
	if (ctx) {
		FUNC3(&ctx->lock);
		FUNC2(ctx->label, FUNC0(label));
	}
	return ctx;
}