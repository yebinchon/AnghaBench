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
typedef  int u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct ceph_fsid {int dummy; } ;
struct ceph_monmap {int epoch; int num_mon; struct ceph_entity_inst* mon_inst; struct ceph_fsid fsid; } ;
struct ceph_entity_inst {int /*<<< orphan*/  addr; int /*<<< orphan*/  name; } ;
typedef  int /*<<< orphan*/  fsid ;

/* Variables and functions */
 int CEPH_MAX_MON ; 
 int EINVAL ; 
 int ENOMEM ; 
 struct ceph_monmap* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 int /*<<< orphan*/  bad ; 
 int FUNC1 (void**) ; 
 int /*<<< orphan*/  FUNC2 (void**,void*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (void**,struct ceph_fsid*,int) ; 
 int /*<<< orphan*/  FUNC4 (void**,void*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC5 (void**,void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (void**,void*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (char*,int,...) ; 
 int /*<<< orphan*/  FUNC9 (struct ceph_monmap*) ; 
 struct ceph_monmap* FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mon_inst ; 
 int /*<<< orphan*/  FUNC11 (struct ceph_monmap*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static struct ceph_monmap *FUNC12(void *p, void *end)
{
	struct ceph_monmap *m = NULL;
	int i, err = -EINVAL;
	struct ceph_fsid fsid;
	u32 epoch, num_mon;
	u32 len;

	FUNC2(&p, end, len, bad);
	FUNC6(&p, end, len, bad);

	FUNC8("monmap_decode %p %p len %d (%d)\n", p, end, len, (int)(end-p));
	p += sizeof(u16);  /* skip version */

	FUNC6(&p, end, sizeof(fsid) + 2*sizeof(u32), bad);
	FUNC3(&p, &fsid, sizeof(fsid));
	epoch = FUNC1(&p);

	num_mon = FUNC1(&p);

	if (num_mon > CEPH_MAX_MON)
		goto bad;
	m = FUNC10(FUNC11(m, mon_inst, num_mon), GFP_NOFS);
	if (m == NULL)
		return FUNC0(-ENOMEM);
	m->fsid = fsid;
	m->epoch = epoch;
	m->num_mon = num_mon;
	for (i = 0; i < num_mon; ++i) {
		struct ceph_entity_inst *inst = &m->mon_inst[i];

		/* copy name portion */
		FUNC4(&p, end, &inst->name,
					sizeof(inst->name), bad);
		err = FUNC5(&p, end, &inst->addr);
		if (err)
			goto bad;
	}
	FUNC8("monmap_decode epoch %d, num_mon %d\n", m->epoch,
	     m->num_mon);
	for (i = 0; i < m->num_mon; i++)
		FUNC8("monmap_decode  mon%d is %s\n", i,
		     FUNC7(&m->mon_inst[i].addr));
	return m;
bad:
	FUNC8("monmap_decode failed with %d\n", err);
	FUNC9(m);
	return FUNC0(err);
}