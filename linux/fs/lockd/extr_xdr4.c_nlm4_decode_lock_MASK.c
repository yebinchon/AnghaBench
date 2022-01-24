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
struct file_lock {void* fl_end; void* fl_start; int /*<<< orphan*/  fl_type; int /*<<< orphan*/  fl_flags; } ;
struct nlm_lock {int /*<<< orphan*/  svid; int /*<<< orphan*/  oh; int /*<<< orphan*/  fh; int /*<<< orphan*/  len; int /*<<< orphan*/  caller; struct file_lock fl; } ;
typedef  scalar_t__ __u64 ;
typedef  scalar_t__ __s64 ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  FL_POSIX ; 
 int /*<<< orphan*/  F_RDLCK ; 
 int /*<<< orphan*/  NLM_MAXSTRLEN ; 
 void* OFFSET_MAX ; 
 int /*<<< orphan*/  FUNC0 (struct file_lock*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 void* FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,scalar_t__*) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static __be32 *
FUNC7(__be32 *p, struct nlm_lock *lock)
{
	struct file_lock	*fl = &lock->fl;
	__u64			len, start;
	__s64			end;

	if (!(p = FUNC6(p, &lock->caller,
					    &lock->len, NLM_MAXSTRLEN))
	 || !(p = FUNC1(p, &lock->fh))
	 || !(p = FUNC2(p, &lock->oh)))
		return NULL;
	lock->svid  = FUNC3(*p++);

	FUNC0(fl);
	fl->fl_flags = FL_POSIX;
	fl->fl_type  = F_RDLCK;		/* as good as anything else */
	p = FUNC5(p, &start);
	p = FUNC5(p, &len);
	end = start + len - 1;

	fl->fl_start = FUNC4(start);

	if (len == 0 || end < 0)
		fl->fl_end = OFFSET_MAX;
	else
		fl->fl_end = FUNC4(end);
	return p;
}