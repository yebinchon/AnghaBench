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
typedef  int u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct ceph_crypto_key {int dummy; } ;
struct ceph_auth_client {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  bad ; 
 int /*<<< orphan*/  FUNC0 (void**,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (void**,void*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct ceph_auth_client*,struct ceph_crypto_key*,void**,void*) ; 

__attribute__((used)) static int FUNC4(struct ceph_auth_client *ac,
				    struct ceph_crypto_key *secret,
				    void *buf, void *end)
{
	void *p = buf;
	u8 reply_struct_v;
	u32 num;
	int ret;

	FUNC1(&p, end, reply_struct_v, bad);
	if (reply_struct_v != 1)
		return -EINVAL;

	FUNC0(&p, end, num, bad);
	FUNC2("%d tickets\n", num);

	while (num--) {
		ret = FUNC3(ac, secret, &p, end);
		if (ret)
			return ret;
	}

	return 0;

bad:
	return -EINVAL;
}