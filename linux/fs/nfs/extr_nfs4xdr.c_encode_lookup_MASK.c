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
struct qstr {int /*<<< orphan*/  name; int /*<<< orphan*/  len; } ;
struct compound_hdr {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  OP_LOOKUP ; 
 int /*<<< orphan*/  decode_lookup_maxsz ; 
 int /*<<< orphan*/  FUNC0 (struct xdr_stream*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct compound_hdr*) ; 
 int /*<<< orphan*/  FUNC1 (struct xdr_stream*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct xdr_stream *xdr, const struct qstr *name, struct compound_hdr *hdr)
{
	FUNC0(xdr, OP_LOOKUP, decode_lookup_maxsz, hdr);
	FUNC1(xdr, name->len, name->name);
}