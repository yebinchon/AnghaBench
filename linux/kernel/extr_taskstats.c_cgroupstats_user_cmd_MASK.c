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
typedef  int /*<<< orphan*/  u32 ;
struct sk_buff {int dummy; } ;
struct nlattr {int dummy; } ;
struct genl_info {struct nlattr** attrs; } ;
struct fd {TYPE_2__* file; } ;
struct cgroupstats {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  dentry; } ;
struct TYPE_4__ {TYPE_1__ f_path; } ;

/* Variables and functions */
 size_t CGROUPSTATS_CMD_ATTR_FD ; 
 int /*<<< orphan*/  CGROUPSTATS_CMD_NEW ; 
 int /*<<< orphan*/  CGROUPSTATS_TYPE_CGROUP_STATS ; 
 int EINVAL ; 
 int EMSGSIZE ; 
 int FUNC0 (struct cgroupstats*,int /*<<< orphan*/ ) ; 
 struct fd FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct fd) ; 
 int /*<<< orphan*/  FUNC3 (struct cgroupstats*,int /*<<< orphan*/ ,int) ; 
 struct cgroupstats* FUNC4 (struct nlattr*) ; 
 int /*<<< orphan*/  FUNC5 (struct nlattr*) ; 
 struct nlattr* FUNC6 (struct sk_buff*,int /*<<< orphan*/ ,int) ; 
 size_t FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*) ; 
 int FUNC9 (struct genl_info*,int /*<<< orphan*/ ,struct sk_buff**,size_t) ; 
 int FUNC10 (struct sk_buff*,struct genl_info*) ; 

__attribute__((used)) static int FUNC11(struct sk_buff *skb, struct genl_info *info)
{
	int rc = 0;
	struct sk_buff *rep_skb;
	struct cgroupstats *stats;
	struct nlattr *na;
	size_t size;
	u32 fd;
	struct fd f;

	na = info->attrs[CGROUPSTATS_CMD_ATTR_FD];
	if (!na)
		return -EINVAL;

	fd = FUNC5(info->attrs[CGROUPSTATS_CMD_ATTR_FD]);
	f = FUNC1(fd);
	if (!f.file)
		return 0;

	size = FUNC7(sizeof(struct cgroupstats));

	rc = FUNC9(info, CGROUPSTATS_CMD_NEW, &rep_skb,
				size);
	if (rc < 0)
		goto err;

	na = FUNC6(rep_skb, CGROUPSTATS_TYPE_CGROUP_STATS,
				sizeof(struct cgroupstats));
	if (na == NULL) {
		FUNC8(rep_skb);
		rc = -EMSGSIZE;
		goto err;
	}

	stats = FUNC4(na);
	FUNC3(stats, 0, sizeof(*stats));

	rc = FUNC0(stats, f.file->f_path.dentry);
	if (rc < 0) {
		FUNC8(rep_skb);
		goto err;
	}

	rc = FUNC10(rep_skb, info);

err:
	FUNC2(f);
	return rc;
}