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
struct kqid {int dummy; } ;
struct gfs2_sbd {int /*<<< orphan*/  sd_quota_count; int /*<<< orphan*/  sd_quota_list; } ;
struct gfs2_quota_data {int /*<<< orphan*/  qd_gl; int /*<<< orphan*/  qd_hlist; int /*<<< orphan*/  qd_list; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC2 (struct gfs2_sbd*,struct kqid) ; 
 struct gfs2_quota_data* FUNC3 (unsigned int,struct gfs2_sbd*,struct kqid) ; 
 int /*<<< orphan*/  gfs2_quotad_cachep ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct gfs2_quota_data*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct gfs2_quota_data* FUNC7 (unsigned int,struct gfs2_sbd*,struct kqid) ; 
 int /*<<< orphan*/ * qd_hash_table ; 
 int /*<<< orphan*/  qd_lock ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (unsigned int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (unsigned int) ; 

__attribute__((used)) static int FUNC14(struct gfs2_sbd *sdp, struct kqid qid,
		  struct gfs2_quota_data **qdp)
{
	struct gfs2_quota_data *qd, *new_qd;
	unsigned int hash = FUNC2(sdp, qid);

	FUNC8();
	*qdp = qd = FUNC3(hash, sdp, qid);
	FUNC9();

	if (qd)
		return 0;

	new_qd = FUNC7(hash, sdp, qid);
	if (!new_qd)
		return -ENOMEM;

	FUNC10(&qd_lock);
	FUNC11(hash);
	*qdp = qd = FUNC3(hash, sdp, qid);
	if (qd == NULL) {
		*qdp = new_qd;
		FUNC6(&new_qd->qd_list, &sdp->sd_quota_list);
		FUNC4(&new_qd->qd_hlist, &qd_hash_table[hash]);
		FUNC0(&sdp->sd_quota_count);
	}
	FUNC13(hash);
	FUNC12(&qd_lock);

	if (qd) {
		FUNC1(new_qd->qd_gl);
		FUNC5(gfs2_quotad_cachep, new_qd);
	}

	return 0;
}