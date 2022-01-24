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
struct nfs_setaclargs {int acl_len; int /*<<< orphan*/  acl_pages; } ;
struct compound_hdr {int dummy; } ;
typedef  void* __be32 ;

/* Variables and functions */
 int FATTR4_WORD0_ACL ; 
 int /*<<< orphan*/  OP_SETATTR ; 
 void* FUNC0 (int) ; 
 int /*<<< orphan*/  decode_setacl_maxsz ; 
 int /*<<< orphan*/  FUNC1 (struct xdr_stream*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct xdr_stream*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct compound_hdr*) ; 
 void** FUNC3 (struct xdr_stream*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct xdr_stream*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  zero_stateid ; 

__attribute__((used)) static void
FUNC5(struct xdr_stream *xdr, const struct nfs_setaclargs *arg,
		struct compound_hdr *hdr)
{
	__be32 *p;

	FUNC2(xdr, OP_SETATTR, decode_setacl_maxsz, hdr);
	FUNC1(xdr, &zero_stateid);
	p = FUNC3(xdr, 2*4);
	*p++ = FUNC0(1);
	*p = FUNC0(FATTR4_WORD0_ACL);
	p = FUNC3(xdr, 4);
	*p = FUNC0(arg->acl_len);
	FUNC4(xdr, arg->acl_pages, 0, arg->acl_len);
}