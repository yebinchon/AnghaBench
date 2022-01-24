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
struct audit_context {int dummy; } ;
struct audit_buffer {int /*<<< orphan*/  gfp_mask; struct audit_context* ctx; int /*<<< orphan*/  skb; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int /*<<< orphan*/  AUDIT_BUFSIZ ; 
 int /*<<< orphan*/  audit_buffer_cache ; 
 int /*<<< orphan*/  FUNC0 (struct audit_buffer*) ; 
 struct audit_buffer* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct audit_buffer *FUNC4(struct audit_context *ctx,
					       gfp_t gfp_mask, int type)
{
	struct audit_buffer *ab;

	ab = FUNC1(audit_buffer_cache, gfp_mask);
	if (!ab)
		return NULL;

	ab->skb = FUNC2(AUDIT_BUFSIZ, gfp_mask);
	if (!ab->skb)
		goto err;
	if (!FUNC3(ab->skb, 0, 0, type, 0, 0))
		goto err;

	ab->ctx = ctx;
	ab->gfp_mask = gfp_mask;

	return ab;

err:
	FUNC0(ab);
	return NULL;
}