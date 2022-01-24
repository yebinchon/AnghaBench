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
typedef  int /*<<< orphan*/  u32 ;
struct kqid {int dummy; } ;
struct gfs2_sbd {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_SYS_ADMIN ; 
 int EINVAL ; 
 int EPERM ; 
 int /*<<< orphan*/  USRQUOTA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 (struct gfs2_sbd*,struct kqid) ; 
 int FUNC3 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct kqid FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct kqid) ; 

__attribute__((used)) static ssize_t FUNC6(struct gfs2_sbd *sdp, const char *buf,
					size_t len)
{
	struct kqid qid;
	int error;
	u32 id;

	if (!FUNC0(CAP_SYS_ADMIN))
		return -EPERM;

	error = FUNC3(buf, 0, &id);
	if (error)
		return error;

	qid = FUNC4(FUNC1(), USRQUOTA, id);
	if (!FUNC5(qid))
		return -EINVAL;

	error = FUNC2(sdp, qid);
	return error ? error : len;
}