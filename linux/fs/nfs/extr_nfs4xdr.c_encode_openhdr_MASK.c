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
struct xdr_stream {int dummy; } ;
struct TYPE_4__ {int uniquifier; int /*<<< orphan*/  create_time; } ;
struct nfs_openargs {TYPE_2__ id; TYPE_1__* server; int /*<<< orphan*/  clientid; int /*<<< orphan*/  share_access; int /*<<< orphan*/  seqid; } ;
typedef  int /*<<< orphan*/  __be32 ;
struct TYPE_3__ {int s_dev; } ;

/* Variables and functions */
 void* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct xdr_stream*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct xdr_stream*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (struct xdr_stream*,int) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,char*,int) ; 

__attribute__((used)) static inline void FUNC6(struct xdr_stream *xdr, const struct nfs_openargs *arg)
{
	__be32 *p;
 /*
 * opcode 4, seqid 4, share_access 4, share_deny 4, clientid 8, ownerlen 4,
 * owner 4 = 32
 */
	FUNC1(xdr, arg->seqid);
	FUNC2(xdr, arg->share_access);
	p = FUNC3(xdr, 36);
	p = FUNC4(p, arg->clientid);
	*p++ = FUNC0(24);
	p = FUNC5(p, "open id:", 8);
	*p++ = FUNC0(arg->server->s_dev);
	*p++ = FUNC0(arg->id.uniquifier);
	FUNC4(p, arg->id.create_time);
}