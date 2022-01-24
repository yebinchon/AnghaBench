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

/* Variables and functions */
 unsigned int FUNC0 (struct xdr_stream*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct xdr_stream*,int /*<<< orphan*/ ,unsigned int) ; 

void FUNC2(struct xdr_stream *xdr, unsigned int len)
{
	len = FUNC0(xdr, len);
	/*
	 * Position current pointer at beginning of tail, and
	 * set remaining message length.
	 */
	if (len != 0)
		FUNC1(xdr, 0, len);
}