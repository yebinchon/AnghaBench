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
typedef  int /*<<< orphan*/  u64 ;
struct ceph_x_authorizer {int dummy; } ;
struct ceph_authorizer {int dummy; } ;
struct ceph_auth_client {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct ceph_x_authorizer*,void*,int,int /*<<< orphan*/ *) ; 
 int FUNC1 (struct ceph_x_authorizer*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 

__attribute__((used)) static int FUNC3(struct ceph_auth_client *ac,
					   struct ceph_authorizer *a,
					   void *challenge_buf,
					   int challenge_buf_len)
{
	struct ceph_x_authorizer *au = (void *)a;
	u64 server_challenge;
	int ret;

	ret = FUNC0(au, challenge_buf, challenge_buf_len,
					  &server_challenge);
	if (ret) {
		FUNC2("failed to decrypt authorize challenge: %d", ret);
		return ret;
	}

	ret = FUNC1(au, &server_challenge);
	if (ret) {
		FUNC2("failed to encrypt authorizer w/ challenge: %d", ret);
		return ret;
	}

	return 0;
}