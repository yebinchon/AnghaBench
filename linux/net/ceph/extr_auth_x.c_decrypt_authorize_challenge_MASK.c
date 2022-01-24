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
struct ceph_x_encrypt_header {int dummy; } ;
struct ceph_x_authorizer {int /*<<< orphan*/  session_key; } ;
struct ceph_x_authorize_challenge {int /*<<< orphan*/  server_challenge; } ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (int /*<<< orphan*/ *,void*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 

__attribute__((used)) static int FUNC3(struct ceph_x_authorizer *au,
				       void *challenge_buf,
				       int challenge_buf_len,
				       u64 *server_challenge)
{
	struct ceph_x_authorize_challenge *ch =
	    challenge_buf + sizeof(struct ceph_x_encrypt_header);
	int ret;

	/* no leading len */
	ret = FUNC0(&au->session_key, challenge_buf,
			       challenge_buf_len);
	if (ret < 0)
		return ret;
	if (ret < sizeof(*ch)) {
		FUNC2("bad size %d for ceph_x_authorize_challenge\n", ret);
		return -EINVAL;
	}

	*server_challenge = FUNC1(ch->server_challenge);
	return 0;
}