#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int sk_rcvbuf; int sk_sndbuf; } ;
struct smc_connection {int rmbe_size_short; int /*<<< orphan*/  sndbuf_space; struct smc_buf_desc* sndbuf_desc; int /*<<< orphan*/  rmbe_update_limit; int /*<<< orphan*/  bytes_to_rcv; struct smc_buf_desc* rmb_desc; struct smc_link_group* lgr; } ;
struct smc_sock {TYPE_1__ sk; struct smc_connection conn; } ;
struct smc_link_group {struct list_head* sndbufs; int /*<<< orphan*/  sndbufs_lock; struct list_head* rmbs; int /*<<< orphan*/  rmbs_lock; } ;
struct smc_buf_desc {int used; int /*<<< orphan*/  len; int /*<<< orphan*/  list; int /*<<< orphan*/  cpu_addr; } ;
struct list_head {int dummy; } ;
typedef  int /*<<< orphan*/  rwlock_t ;

/* Variables and functions */
 int ENOMEM ; 
 struct smc_buf_desc* FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct smc_buf_desc*) ; 
 int FUNC2 (struct smc_buf_desc*) ; 
 int SG_MAX_SINGLE_ALLOC ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct list_head*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct smc_buf_desc* FUNC7 (int,int /*<<< orphan*/ *,struct list_head*) ; 
 int FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (struct smc_connection*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int FUNC11 (int) ; 
 struct smc_buf_desc* FUNC12 (struct smc_link_group*,int,int) ; 
 struct smc_buf_desc* FUNC13 (struct smc_link_group*,int,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC16(struct smc_sock *smc, bool is_smcd, bool is_rmb)
{
	struct smc_buf_desc *buf_desc = FUNC0(-ENOMEM);
	struct smc_connection *conn = &smc->conn;
	struct smc_link_group *lgr = conn->lgr;
	struct list_head *buf_list;
	int bufsize, bufsize_short;
	int sk_buf_size;
	rwlock_t *lock;

	if (is_rmb)
		/* use socket recv buffer size (w/o overhead) as start value */
		sk_buf_size = smc->sk.sk_rcvbuf / 2;
	else
		/* use socket send buffer size (w/o overhead) as start value */
		sk_buf_size = smc->sk.sk_sndbuf / 2;

	for (bufsize_short = FUNC8(sk_buf_size);
	     bufsize_short >= 0; bufsize_short--) {

		if (is_rmb) {
			lock = &lgr->rmbs_lock;
			buf_list = &lgr->rmbs[bufsize_short];
		} else {
			lock = &lgr->sndbufs_lock;
			buf_list = &lgr->sndbufs[bufsize_short];
		}
		bufsize = FUNC11(bufsize_short);
		if ((1 << FUNC4(bufsize)) > SG_MAX_SINGLE_ALLOC)
			continue;

		/* check for reusable slot in the link group */
		buf_desc = FUNC7(bufsize_short, lock, buf_list);
		if (buf_desc) {
			FUNC6(buf_desc->cpu_addr, 0, bufsize);
			break; /* found reusable slot */
		}

		if (is_smcd)
			buf_desc = FUNC12(lgr, is_rmb, bufsize);
		else
			buf_desc = FUNC13(lgr, is_rmb, bufsize);

		if (FUNC2(buf_desc) == -ENOMEM)
			break;
		if (FUNC1(buf_desc))
			continue;

		buf_desc->used = 1;
		FUNC14(lock);
		FUNC5(&buf_desc->list, buf_list);
		FUNC15(lock);
		break; /* found */
	}

	if (FUNC1(buf_desc))
		return -ENOMEM;

	if (is_rmb) {
		conn->rmb_desc = buf_desc;
		conn->rmbe_size_short = bufsize_short;
		smc->sk.sk_rcvbuf = bufsize * 2;
		FUNC3(&conn->bytes_to_rcv, 0);
		conn->rmbe_update_limit =
			FUNC10(buf_desc->len);
		if (is_smcd)
			FUNC9(conn); /* map RMB/smcd_dev to conn */
	} else {
		conn->sndbuf_desc = buf_desc;
		smc->sk.sk_sndbuf = bufsize * 2;
		FUNC3(&conn->sndbuf_space, bufsize);
	}
	return 0;
}