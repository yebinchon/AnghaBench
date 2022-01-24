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
struct TYPE_4__ {TYPE_1__* sc_file; int /*<<< orphan*/  sc_stateid; } ;
struct nfs4_delegation {TYPE_2__ dl_stid; } ;
struct nfs4_cb_compound_hdr {int /*<<< orphan*/  nops; } ;
typedef  int /*<<< orphan*/  __be32 ;
struct TYPE_3__ {int /*<<< orphan*/  fi_fhandle; } ;

/* Variables and functions */
 int /*<<< orphan*/  OP_CB_RECALL ; 
 int /*<<< orphan*/  FUNC0 (struct xdr_stream*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct xdr_stream*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct xdr_stream*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (struct xdr_stream*,int) ; 
 int /*<<< orphan*/  xdr_zero ; 

__attribute__((used)) static void FUNC4(struct xdr_stream *xdr,
				  const struct nfs4_delegation *dp,
				  struct nfs4_cb_compound_hdr *hdr)
{
	__be32 *p;

	FUNC0(xdr, OP_CB_RECALL);
	FUNC2(xdr, &dp->dl_stid.sc_stateid);

	p = FUNC3(xdr, 4);
	*p++ = xdr_zero;			/* truncate */

	FUNC1(xdr, &dp->dl_stid.sc_file->fi_fhandle);

	hdr->nops++;
}