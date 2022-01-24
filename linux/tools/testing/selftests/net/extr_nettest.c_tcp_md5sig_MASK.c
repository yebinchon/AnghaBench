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
struct tcp_md5sig {int tcpm_keylen; int /*<<< orphan*/  tcpm_key; int /*<<< orphan*/  tcpm_addr; } ;
typedef  int /*<<< orphan*/  socklen_t ;
typedef  int /*<<< orphan*/  md5sig ;

/* Variables and functions */
 scalar_t__ ENOENT ; 
 int /*<<< orphan*/  IPPROTO_TCP ; 
 int /*<<< orphan*/  TCP_MD5SIG ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char const*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct tcp_md5sig*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct tcp_md5sig*,int) ; 
 int FUNC4 (char const*) ; 

__attribute__((used)) static int FUNC5(int sd, void *addr, socklen_t alen, const char *password)
{
	struct tcp_md5sig md5sig;
	int keylen = password ? FUNC4(password) : 0;
	int rc;

	FUNC2(&md5sig, 0, sizeof(md5sig));
	FUNC1(md5sig.tcpm_addr, addr, alen);
	md5sig.tcpm_keylen = keylen;

	if (keylen)
		FUNC1(md5sig.tcpm_key, password, keylen);

	rc = FUNC3(sd, IPPROTO_TCP, TCP_MD5SIG, &md5sig, sizeof(md5sig));
	if (rc < 0) {
		/* ENOENT is harmless. Returned when a password is cleared */
		if (errno == ENOENT)
			rc = 0;
		else
			FUNC0("setsockopt(TCP_MD5SIG)");
	}

	return rc;
}