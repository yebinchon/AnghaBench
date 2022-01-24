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
typedef  int /*<<< orphan*/  u8 ;
struct xdr_netobj {int len; int /*<<< orphan*/  data; } ;
struct kvec {scalar_t__ iov_len; int /*<<< orphan*/ * iov_base; } ;

/* Variables and functions */
 scalar_t__ PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct kvec*,int) ; 

__attribute__((used)) static inline int
FUNC4(struct kvec *resv, struct xdr_netobj *o)
{
	u8 *p;

	if (resv->iov_len + 4 > PAGE_SIZE)
		return -1;
	FUNC3(resv, o->len);
	p = resv->iov_base + resv->iov_len;
	resv->iov_len += FUNC2(o->len);
	if (resv->iov_len > PAGE_SIZE)
		return -1;
	FUNC0(p, o->data, o->len);
	FUNC1(p + o->len, 0, FUNC2(o->len) - o->len);
	return 0;
}