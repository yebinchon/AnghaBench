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
struct sock {int dummy; } ;
struct sctp_endpoint {int dummy; } ;
struct sctp_association {int dummy; } ;
typedef  int /*<<< orphan*/  gfp_t ;
typedef  enum sctp_scope { ____Placeholder_sctp_scope } sctp_scope ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  assoc ; 
 int /*<<< orphan*/  FUNC1 (struct sctp_association*) ; 
 struct sctp_association* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,struct sctp_association*) ; 
 int /*<<< orphan*/  FUNC4 (struct sctp_association*,struct sctp_endpoint const*,struct sock const*,int,int /*<<< orphan*/ ) ; 

struct sctp_association *FUNC5(const struct sctp_endpoint *ep,
					      const struct sock *sk,
					      enum sctp_scope scope, gfp_t gfp)
{
	struct sctp_association *asoc;

	asoc = FUNC2(sizeof(*asoc), gfp);
	if (!asoc)
		goto fail;

	if (!FUNC4(asoc, ep, sk, scope, gfp))
		goto fail_init;

	FUNC0(assoc);

	FUNC3("Created asoc %p\n", asoc);

	return asoc;

fail_init:
	FUNC1(asoc);
fail:
	return NULL;
}