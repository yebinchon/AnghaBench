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
struct xdr_skb_reader {size_t count; unsigned int offset; int /*<<< orphan*/  csum; int /*<<< orphan*/  skb; } ;
typedef  int /*<<< orphan*/  __wsum ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned int,void*,size_t,int /*<<< orphan*/ ) ; 

__attribute__((used)) static size_t FUNC2(struct xdr_skb_reader *desc, void *to, size_t len)
{
	unsigned int pos;
	__wsum csum2;

	if (len > desc->count)
		len = desc->count;
	pos = desc->offset;
	csum2 = FUNC1(desc->skb, pos, to, len, 0);
	desc->csum = FUNC0(desc->csum, csum2, pos);
	desc->count -= len;
	desc->offset += len;
	return len;
}