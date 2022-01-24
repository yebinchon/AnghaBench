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
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sctp_endpoint*) ; 
 int /*<<< orphan*/  FUNC1 (struct sctp_endpoint*) ; 
 struct sctp_endpoint* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sctp_endpoint*,struct sock*,int /*<<< orphan*/ ) ; 

struct sctp_endpoint *FUNC4(struct sock *sk, gfp_t gfp)
{
	struct sctp_endpoint *ep;

	/* Build a local endpoint. */
	ep = FUNC2(sizeof(*ep), gfp);
	if (!ep)
		goto fail;

	if (!FUNC3(ep, sk, gfp))
		goto fail_init;

	FUNC0(ep);
	return ep;

fail_init:
	FUNC1(ep);
fail:
	return NULL;
}