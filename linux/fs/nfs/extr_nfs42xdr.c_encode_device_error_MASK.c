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
struct xdr_stream {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  data; } ;
struct nfs42_device_error {int /*<<< orphan*/  opnum; int /*<<< orphan*/  status; TYPE_1__ dev_id; } ;
typedef  void* __be32 ;

/* Variables and functions */
 scalar_t__ NFS4_DEVICEID4_SIZE ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 void** FUNC1 (struct xdr_stream*,scalar_t__) ; 
 void** FUNC2 (void**,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC3(struct xdr_stream *xdr,
				const struct nfs42_device_error *error)
{
	__be32 *p;

	p = FUNC1(xdr, NFS4_DEVICEID4_SIZE + 2*4);
	p = FUNC2(p, error->dev_id.data,
			NFS4_DEVICEID4_SIZE);
	*p++ = FUNC0(error->status);
	*p = FUNC0(error->opnum);
}