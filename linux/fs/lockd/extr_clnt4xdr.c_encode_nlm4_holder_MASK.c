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
typedef  int /*<<< orphan*/  u64 ;
struct xdr_stream {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  len; int /*<<< orphan*/  data; } ;
struct TYPE_4__ {scalar_t__ fl_type; } ;
struct nlm_lock {TYPE_1__ oh; int /*<<< orphan*/  svid; TYPE_2__ fl; } ;
struct nlm_res {struct nlm_lock lock; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 scalar_t__ F_RDLCK ; 
 int /*<<< orphan*/  FUNC0 (struct xdr_stream*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct xdr_stream*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct xdr_stream*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct nlm_lock const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (struct xdr_stream*,int) ; 

__attribute__((used)) static void FUNC6(struct xdr_stream *xdr,
			       const struct nlm_res *result)
{
	const struct nlm_lock *lock = &result->lock;
	u64 l_offset, l_len;
	__be32 *p;

	FUNC0(xdr, lock->fl.fl_type == F_RDLCK);
	FUNC1(xdr, lock->svid);
	FUNC2(xdr, lock->oh.data, lock->oh.len);

	p = FUNC5(xdr, 4 + 4);
	FUNC3(lock, &l_offset, &l_len);
	p = FUNC4(p, l_offset);
	FUNC4(p, l_len);
}