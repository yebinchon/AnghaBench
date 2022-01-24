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
struct aa_file_ctx {int /*<<< orphan*/  label; } ;

/* Variables and functions */
 struct aa_label* FUNC0 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline struct aa_label *FUNC1(struct aa_file_ctx *ctx)
{
	return FUNC0(&ctx->label);
}