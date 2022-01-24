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
struct tls_context {struct scatterlist* partially_sent_record; } ;
struct sock {int dummy; } ;
struct scatterlist {int /*<<< orphan*/  length; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct scatterlist*) ; 
 int /*<<< orphan*/  FUNC2 (struct scatterlist*) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*,int /*<<< orphan*/ ) ; 

bool FUNC4(struct sock *sk, struct tls_context *ctx)
{
	struct scatterlist *sg;

	sg = ctx->partially_sent_record;
	if (!sg)
		return false;

	while (1) {
		FUNC0(FUNC2(sg));
		FUNC3(sk, sg->length);

		if (FUNC1(sg))
			break;
		sg++;
	}
	ctx->partially_sent_record = NULL;
	return true;
}