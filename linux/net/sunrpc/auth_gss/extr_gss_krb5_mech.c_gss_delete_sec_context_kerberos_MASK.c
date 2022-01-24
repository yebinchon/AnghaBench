#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {struct krb5_ctx* data; } ;
struct krb5_ctx {TYPE_1__ mech_used; int /*<<< orphan*/  initiator_enc_aux; int /*<<< orphan*/  acceptor_enc_aux; int /*<<< orphan*/  initiator_enc; int /*<<< orphan*/  acceptor_enc; int /*<<< orphan*/  enc; int /*<<< orphan*/  seq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct krb5_ctx*) ; 

__attribute__((used)) static void
FUNC2(void *internal_ctx) {
	struct krb5_ctx *kctx = internal_ctx;

	FUNC0(kctx->seq);
	FUNC0(kctx->enc);
	FUNC0(kctx->acceptor_enc);
	FUNC0(kctx->initiator_enc);
	FUNC0(kctx->acceptor_enc_aux);
	FUNC0(kctx->initiator_enc_aux);
	FUNC1(kctx->mech_used.data);
	FUNC1(kctx);
}