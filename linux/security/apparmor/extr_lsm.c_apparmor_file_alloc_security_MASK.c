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
struct file {int dummy; } ;
struct aa_label {int dummy; } ;
struct aa_file_ctx {int /*<<< orphan*/  label; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct aa_label*) ; 
 struct aa_label* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct aa_label*) ; 
 struct aa_file_ctx* FUNC3 (struct file*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct file *file)
{
	struct aa_file_ctx *ctx = FUNC3(file);
	struct aa_label *label = FUNC1();

	FUNC5(&ctx->lock);
	FUNC4(ctx->label, FUNC0(label));
	FUNC2(label);
	return 0;
}