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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_3__ {int iov_len; void* iov_base; } ;
struct ceph_msg {TYPE_1__ front; } ;
struct TYPE_4__ {int /*<<< orphan*/  shard; int /*<<< orphan*/  pgid; } ;
struct MOSDBackoff {void* end; void* begin; int /*<<< orphan*/  id; int /*<<< orphan*/  op; int /*<<< orphan*/  map_epoch; TYPE_2__ spgid; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_NOIO ; 
 int /*<<< orphan*/  FUNC0 (void**,void* const,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (void**,void* const,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (void**,void* const,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (void**,void* const,int /*<<< orphan*/ *) ; 
 int FUNC4 (void**,void* const,int,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC5 (void**,void* const,void*) ; 
 int /*<<< orphan*/  e_inval ; 
 int /*<<< orphan*/  FUNC6 (void*) ; 
 void* FUNC7 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(const struct ceph_msg *msg, struct MOSDBackoff *m)
{
	void *p = msg->front.iov_base;
	void *const end = p + msg->front.iov_len;
	u8 struct_v;
	u32 struct_len;
	int ret;

	ret = FUNC4(&p, end, 1, "spg_t", &struct_v, &struct_len);
	if (ret)
		return ret;

	ret = FUNC3(&p, end, &m->spgid.pgid);
	if (ret)
		return ret;

	FUNC2(&p, end, m->spgid.shard, e_inval);
	FUNC0(&p, end, m->map_epoch, e_inval);
	FUNC2(&p, end, m->op, e_inval);
	FUNC1(&p, end, m->id, e_inval);

	m->begin = FUNC7(sizeof(*m->begin), GFP_NOIO);
	if (!m->begin)
		return -ENOMEM;

	ret = FUNC5(&p, end, m->begin);
	if (ret) {
		FUNC6(m->begin);
		return ret;
	}

	m->end = FUNC7(sizeof(*m->end), GFP_NOIO);
	if (!m->end) {
		FUNC6(m->begin);
		return -ENOMEM;
	}

	ret = FUNC5(&p, end, m->end);
	if (ret) {
		FUNC6(m->begin);
		FUNC6(m->end);
		return ret;
	}

	return 0;

e_inval:
	return -EINVAL;
}