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
struct knfsd_fh {scalar_t__ fh_fsid_type; int /*<<< orphan*/  fh_fsid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline bool FUNC2(struct knfsd_fh *fh1, struct knfsd_fh *fh2)
{
	if (fh1->fh_fsid_type != fh2->fh_fsid_type)
		return false;
	if (FUNC1(fh1->fh_fsid, fh2->fh_fsid, FUNC0(fh1->fh_fsid_type)) != 0)
		return false;
	return true;
}