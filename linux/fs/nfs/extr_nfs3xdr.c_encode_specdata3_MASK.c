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
typedef  int /*<<< orphan*/  dev_t ;
typedef  void* __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 void** FUNC3 (struct xdr_stream*,int) ; 

__attribute__((used)) static void FUNC4(struct xdr_stream *xdr, const dev_t rdev)
{
	__be32 *p;

	p = FUNC3(xdr, 8);
	*p++ = FUNC2(FUNC0(rdev));
	*p = FUNC2(FUNC1(rdev));
}