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
struct TYPE_2__ {scalar_t__* val; } ;
struct fanotify_fid {TYPE_1__ fsid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct fanotify_fid*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static inline bool FUNC2(struct fanotify_fid *fid1,
				      struct fanotify_fid *fid2,
				      unsigned int fh_len)
{
	return fid1->fsid.val[0] == fid2->fsid.val[0] &&
		fid1->fsid.val[1] == fid2->fsid.val[1] &&
		!FUNC1(FUNC0(fid1, fh_len),
			FUNC0(fid2, fh_len), fh_len);
}