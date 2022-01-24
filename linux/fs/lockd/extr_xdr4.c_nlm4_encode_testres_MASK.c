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
struct file_lock {scalar_t__ fl_type; scalar_t__ fl_start; scalar_t__ fl_end; } ;
struct TYPE_2__ {scalar_t__ svid; int /*<<< orphan*/  oh; struct file_lock fl; } ;
struct nlm_res {TYPE_1__ lock; int /*<<< orphan*/  status; int /*<<< orphan*/  cookie; } ;
typedef  int /*<<< orphan*/  s64 ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 scalar_t__ F_RDLCK ; 
 scalar_t__ OFFSET_MAX ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ *,...) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  nlm_lck_denied ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  xdr_one ; 
 int /*<<< orphan*/  xdr_zero ; 

__attribute__((used)) static __be32 *
FUNC6(__be32 *p, struct nlm_res *resp)
{
	s64		start, len;

	FUNC0("xdr: before encode_testres (p %p resp %p)\n", p, resp);
	if (!(p = FUNC3(p, &resp->cookie)))
		return NULL;
	*p++ = resp->status;

	if (resp->status == nlm_lck_denied) {
		struct file_lock	*fl = &resp->lock.fl;

		*p++ = (fl->fl_type == F_RDLCK)? xdr_zero : xdr_one;
		*p++ = FUNC1(resp->lock.svid);

		/* Encode owner handle. */
		if (!(p = FUNC5(p, &resp->lock.oh)))
			return NULL;

		start = FUNC2(fl->fl_start);
		if (fl->fl_end == OFFSET_MAX)
			len = 0;
		else
			len = FUNC2(fl->fl_end - fl->fl_start + 1);
		
		p = FUNC4(p, start);
		p = FUNC4(p, len);
		FUNC0("xdr: encode_testres (status %u pid %d type %d start %Ld end %Ld)\n",
			&resp->status, (int)resp->lock.svid, fl->fl_type,
			(long long)fl->fl_start,  (long long)fl->fl_end);
	}

	FUNC0("xdr: after encode_testres (p %p resp %p)\n", p, resp);
	return p;
}