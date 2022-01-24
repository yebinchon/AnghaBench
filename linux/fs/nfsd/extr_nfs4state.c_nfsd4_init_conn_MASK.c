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
struct svc_rqst {int dummy; } ;
struct nfsd4_session {int /*<<< orphan*/  se_client; } ;
struct nfsd4_conn {int /*<<< orphan*/  cn_xpt_user; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct nfsd4_conn*,struct nfsd4_session*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct nfsd4_conn*) ; 

__attribute__((used)) static void FUNC4(struct svc_rqst *rqstp, struct nfsd4_conn *conn, struct nfsd4_session *ses)
{
	int ret;

	FUNC1(conn, ses);
	ret = FUNC3(conn);
	if (ret)
		/* oops; xprt is already down: */
		FUNC0(&conn->cn_xpt_user);
	/* We may have gained or lost a callback channel: */
	FUNC2(ses->se_client);
}