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
typedef  int /*<<< orphan*/  u32 ;
struct xdr_stream {int dummy; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  NFS3_MAXNAMLEN ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (struct xdr_stream*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct xdr_stream *xdr,
			     const char *name, u32 length)
{
	__be32 *p;

	FUNC0(length > NFS3_MAXNAMLEN);
	p = FUNC2(xdr, 4 + length);
	FUNC1(p, name, length);
}