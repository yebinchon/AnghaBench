#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct xdr_stream {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  si_opaque; int /*<<< orphan*/  si_generation; } ;
typedef  TYPE_1__ stateid_t ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  NFS4_STATEID_OTHER_SIZE ; 
 int /*<<< orphan*/  NFS4_STATEID_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (struct xdr_stream*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct xdr_stream *xdr, const stateid_t *sid)
{
	__be32 *p;

	p = FUNC2(xdr, NFS4_STATEID_SIZE);
	*p++ = FUNC0(sid->si_generation);
	FUNC1(p, &sid->si_opaque, NFS4_STATEID_OTHER_SIZE);
}