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
typedef  int /*<<< orphan*/  u32 ;
struct xdr_stream {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  len; int /*<<< orphan*/  data; } ;
struct nlm_lock {int /*<<< orphan*/  svid; TYPE_1__ oh; int /*<<< orphan*/  fh; int /*<<< orphan*/  caller; } ;
typedef  void* __be32 ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct xdr_stream*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct xdr_stream*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct xdr_stream*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct nlm_lock const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 void** FUNC5 (struct xdr_stream*,int) ; 

__attribute__((used)) static void FUNC6(struct xdr_stream *xdr,
			    const struct nlm_lock *lock)
{
	u32 l_offset, l_len;
	__be32 *p;

	FUNC1(xdr, lock->caller);
	FUNC2(xdr, &lock->fh);
	FUNC3(xdr, lock->oh.data, lock->oh.len);

	p = FUNC5(xdr, 4 + 4 + 4);
	*p++ = FUNC0(lock->svid);

	FUNC4(lock, &l_offset, &l_len);
	*p++ = FUNC0(l_offset);
	*p   = FUNC0(l_len);
}