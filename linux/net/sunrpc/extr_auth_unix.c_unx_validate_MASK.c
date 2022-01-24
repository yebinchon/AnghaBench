#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct xdr_stream {int dummy; } ;
struct rpc_task {TYPE_2__* tk_rqstp; } ;
struct rpc_auth {void* au_ralign; void* au_rslack; void* au_verfsize; } ;
typedef  int /*<<< orphan*/  __be32 ;
struct TYPE_4__ {TYPE_1__* rq_cred; } ;
struct TYPE_3__ {struct rpc_auth* cr_auth; } ;

/* Variables and functions */
 int EIO ; 
 int RPC_MAX_AUTH_SIZE ; 
 void* FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
#define  rpc_auth_null 130 
#define  rpc_auth_short 129 
#define  rpc_auth_unix 128 
 int /*<<< orphan*/ * FUNC2 (struct xdr_stream*,int) ; 

__attribute__((used)) static int
FUNC3(struct rpc_task *task, struct xdr_stream *xdr)
{
	struct rpc_auth *auth = task->tk_rqstp->rq_cred->cr_auth;
	__be32 *p;
	u32 size;

	p = FUNC2(xdr, 2 * sizeof(*p));
	if (!p)
		return -EIO;
	switch (*p++) {
	case rpc_auth_null:
	case rpc_auth_unix:
	case rpc_auth_short:
		break;
	default:
		return -EIO;
	}
	size = FUNC1(p);
	if (size > RPC_MAX_AUTH_SIZE)
		return -EIO;
	p = FUNC2(xdr, size);
	if (!p)
		return -EIO;

	auth->au_verfsize = FUNC0(size) + 2;
	auth->au_rslack = FUNC0(size) + 2;
	auth->au_ralign = FUNC0(size) + 2;
	return 0;
}