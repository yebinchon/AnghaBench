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
struct nfs_setattrargs {int /*<<< orphan*/  label; int /*<<< orphan*/  iap; int /*<<< orphan*/  stateid; } ;
struct nfs_server {int /*<<< orphan*/  attr_bitmask; } ;
struct compound_hdr {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  OP_SETATTR ; 
 int /*<<< orphan*/  decode_setattr_maxsz ; 
 int /*<<< orphan*/  FUNC0 (struct xdr_stream*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct nfs_server const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct xdr_stream*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct xdr_stream*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct compound_hdr*) ; 

__attribute__((used)) static void FUNC3(struct xdr_stream *xdr, const struct nfs_setattrargs *arg, const struct nfs_server *server, struct compound_hdr *hdr)
{
	FUNC2(xdr, OP_SETATTR, decode_setattr_maxsz, hdr);
	FUNC1(xdr, &arg->stateid);
	FUNC0(xdr, arg->iap, arg->label, NULL, server,
			server->attr_bitmask);
}