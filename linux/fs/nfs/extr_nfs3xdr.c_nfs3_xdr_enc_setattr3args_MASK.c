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
struct xdr_stream {int dummy; } ;
struct rpc_rqst {int dummy; } ;
struct nfs3_sattrargs {int /*<<< orphan*/  sattr; int /*<<< orphan*/  fh; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct xdr_stream*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct xdr_stream*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct xdr_stream*,struct nfs3_sattrargs const*) ; 
 int /*<<< orphan*/  FUNC3 (struct rpc_rqst*) ; 

__attribute__((used)) static void FUNC4(struct rpc_rqst *req,
				      struct xdr_stream *xdr,
				      const void *data)
{
	const struct nfs3_sattrargs *args = data;
	FUNC0(xdr, args->fh);
	FUNC1(xdr, args->sattr, FUNC3(req));
	FUNC2(xdr, args);
}